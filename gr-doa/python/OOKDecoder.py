#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Copyright 2021 jhunhong.
#
# This is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
#
# This software is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this software; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
#


import numpy as np
from gnuradio import gr
import pmt
import time

class OOKDecoder(gr.sync_block):
    """
    docstring for block OOKDecoder
    """
    def __init__(self, data_size, packet_size, num_of_bits, repeat, header_str):
        # 1 input port, 1 item (float)
        # 1 output port, 1 item (string)
        gr.sync_block.__init__(self,
            name="OOKDecoder",
            in_sig=[np.float32],
            out_sig=[])
        self.message_port_register_out(pmt.intern("out"))
        # self.set_max_noutput_items(1)
        # self.set_max_output_buffer(1)

        self.data_size = data_size
        self.packet_size = packet_size
        self.symbol_size = num_of_bits
        self.repeat = repeat
        self.header = header_str

        self.recv_data = []

        self.update_period = 0.1
        self.last = time.time()

    def work(self, input_items, output_items):
        data = input_items[0]
        # print("len of input {}".format(len(data)))
        # print(data)
        # self.recv_data.append(data)
        # if time.time() - self.last > 1:
        #     print(len(self.recv_data))

        # if len(data) >= self.data_size:
        payloads = self.get_payload(data, self.packet_size)
        # print(payloads)
        # print(data)

        for payload in payloads:
            # print(self.header[:2])
            if self.header[:2] in payload:
                find_index = payload.index(self.header[:2])
                payload = payload[:find_index]
                # output_items[0] = pmt.string_to_symbol(payload[:find_index])
                # print(payload)
                self.message_port_pub(pmt.intern("out"), pmt.string_to_symbol(payload))
            else:
                # print("")
                self.message_port_pub(pmt.intern("out"), pmt.string_to_symbol(""))
                # output_items[0] = pmt.string_to_symbol("")

            # self.recv_data = []

        return len(data)


    def gating(self, data, sum_gate=6, zero_len=4):
        # print(type(data))
        symbol_sum = data.sum()
        if symbol_sum < sum_gate and data[-zero_len:].sum() == 0:
            return True
        else:
            #print("Symbol updating failed: {}. Symbol Sum: {}, Back Sum: {}.".format(data, symbol_sum, data[-zero_len:].sum()))
            return False

    def offset_from_first_peak(self, packet_data):
        # find the first peak
        i = 0
        for sample in packet_data:
            #print(i)
            #print(sample)
            if sample > 0.5 and self.gating(packet_data[i:i+self.symbol_size]):
                break
            else:
                i += 1
        # print('i is {}', i)
        # there is a chance that the starting point is noisy
        # evaluate if the second peak follows the same format
        rest_data = packet_data[i+self.symbol_size:]
        j = 0
        for sample in rest_data:
            if sample > 0.5 and self.gating(rest_data[j:j+self.symbol_size]):
                break
            else:
                j += 1

        # print('j is {}', j)
        if j % self.symbol_size == 0:
            #print("Packet has been offseted.")
            return packet_data[i:]
        else:  # the first peak and the second peak does not match
            # print("Peak mismatch, packet dropped.")
            return np.array([])

    def get_payload(self, data, packet_size):
        # data lists after this is all in numpy array
        self.samples = np.array(data)
        # self.samples = data
        # print(self.samples)
        # print(len(self.samples))
        num_packet = len(self.samples) // (packet_size * self.symbol_size)
        # print("Total number of samples: {}\nProcessing {} packets, drop out {} samples".format(len(self.samples), num_packet, len(self.samples) - num_packet * packet_size * self.symbol_size))
        packets = self.samples[:num_packet * packet_size * self.symbol_size].reshape((num_packet, packet_size * self.symbol_size))
        # packets is 2D array, with 1 list element of size packetsize * symbol_size

        # print(len(packets))
        payloads = []
        for packet in packets:
            # print(packet)
            payload = ""
            packet_sync_data, header_match = self.sync_with_header(packet, self.header)
            if header_match:
                # print(len(packet_sync_data))
                packet_num_bits = len(packet_sync_data) // 8
                # convert bits to bytes
                packet_sync_bytes = packet_sync_data.reshape((packet_num_bits, 8))
                packet_sync_bytes = (packet_sync_bytes * np.array([2**7, 2**6, 2**5, 2**4, 2**3, 2**2, 2**1, 2**0])).sum(axis=1)
                for char_byte in packet_sync_bytes:
                    payload += chr(char_byte)
                # print(payload[len(self.header):])
            # in 4096 bits, they will be header and data occur more than one time
            # best case is about 23chars for the data in this design because we need header at the in the front and end and the packetsize = 256 bits = 32 bytes
            # header in front will take 6bytes, at the end take one endl and "he", so 3bytes
            # header front + end will take up 9bytes
            # 32 - 6 - 3 = 23bytes/chars
            payloads.append(payload[len(self.header):])
        # print(payloads)
        return payloads

    def sync_with_header(self, data, header_str, match_ratio=0.9):
        # print(data)
        offset_samples = self.offset_from_first_peak(data)
        header_match = False
        sync_bits_stream = []
        if len(offset_samples) == 0:
            # print("No meaningful data has been received.")
            pass
        else:
            # print("Received meaningful data. Checking header with a matching ratio of {}...".format(match_ratio))
            # print('offset_samples is {}'.format(len(offset_samples)))
            abandon_samples = len(offset_samples) % self.symbol_size
            # new_samples = offset_samples[:-abandon_samples]
            new_samples = offset_samples[:-abandon_samples] if abandon_samples != 0 else offset_samples[:]
            # print('len of new_samples {}'.format(len(new_samples)))
            num_bits = len(new_samples) // self.symbol_size

            # make it into num_bits element, and each element is symbolsize long
            # num_bits is about 252~255 if the signal is very strong, distance is close
            bits_samples = new_samples.reshape((num_bits, self.symbol_size))
            bits_stream = []
            num_wrong_bits = 0
            bytes_stream = []
            for bit_sample in bits_samples:
                # self gating search if the 10 items, 5 of them is 1 and the last 4 is 0
                if self.gating(bit_sample) or bit_sample[-1] > 0.5:
                    if bit_sample.sum() >= 1:
                        bit = 1
                    else:
                        bit = 0
                    bits_stream.append(bit)
                else:
                    # print("Bits decoding failed: {}. Clock in 0 in the bit stream.".format(bit_sample))
                    bits_stream.append(0)
                    num_wrong_bits += 1
            # print("Wrong bits/Total bits = {}/{}".format(num_wrong_bits, num_bits))

            # form bytes and compare with the header
            num_header_bits = len(header_str) * 8
            num_slides = num_bits - num_header_bits

            ## check if "header" exist, if not slide right by 1 bit and try again
            for i in range(num_slides):
                possible_header = np.array(bits_stream[i: i+num_header_bits])
                possible_header_bytes = possible_header.reshape((len(header_str), 8))
                possible_header_bytes = (possible_header_bytes * np.array([2**7, 2**6, 2**5, 2**4, 2**3, 2**2, 2**1, 2**0])).sum(axis=1)
                # possible_header_bins = [ ele for ele in possible_header_bytes]
                # possible_header_bins = [bin(ele) for ele in possible_header_bytes]
                # possible_header_bins = [''.join(map(str, bytes)) for bytes in possible_header_bytes]
                for j in range(len(possible_header_bytes)):
                    # get_bin = int(possible_header_bins[j], 2)
                    get_bin = possible_header_bytes[j]
                    header_bin = ord(header_str[j])
                    if header_bin != get_bin:
                        break
                    else:
                        if j == len(possible_header_bytes) - 1:
                            header_match = True
                            #print("header matches")

                # if "header" exist then the following bits is the data
                if header_match:
                    sync_bits_stream = bits_stream[i:]
                    # drop last bits if there are any
                    num_drop_bits = len(sync_bits_stream) % 8
                    # sync_bits_stream = sync_bits_stream[:-num_drop_bits]
                    sync_bits_stream = sync_bits_stream[:-num_drop_bits] if num_drop_bits != 0 else sync_bits_stream[:]
                    break
        return np.array(sync_bits_stream), header_match
