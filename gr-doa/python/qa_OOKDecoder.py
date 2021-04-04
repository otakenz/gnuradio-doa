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

from gnuradio import gr, gr_unittest
from gnuradio import blocks
from OOKDecoder import OOKDecoder
import numpy
import sys
from gnuradio import analog
from gnuradio import zeromq
import pmt

class qa_OOKDecoder(gr_unittest.TestCase):

    def setUp(self):
        self.tb = gr.top_block()

    def tearDown(self):
        self.tb = None

    def test_001_t(self):
        # data
        self.vector_length = 1
        # self.data1 = numpy.random.randint(0, 2, 2560)
        # self.data1 = numpy.random.uniform(0, 1, 2560).round()
        # self.data1 = [0., 1., 1., 0., 0., 0., 0., 1.]
        # self.data1 = [0.]
        # print(sys.getsizeof(self.data1))

        # blocks
        # self.src1 = blocks.vector_source_c(self.data1, False, 1280)
        self.src1 = analog.random_uniform_source_i(0,1,300)
        # self.src1 = analog.sig_source_f(1000, 'square', 1000, 1)
        # self.src1 = analog.noise_source_f(200, 1, 23)
        self.int_to_float = blocks.int_to_float(1, 1)
        # self.threshold = blocks.threshold_ff(0.05, 0.1, 0)
        self.ook_decoder = OOKDecoder('2560', 256, 10, True, 'header')
        self.message_sink = zeromq.push_msg_sink("tcp://127.0.0.1:5557", 100, True)
        # self.message_source = zeromq.pull_msg_source("tcp://127.0.0.1:5557", 100, True)
        # self.snk = blocks.vector_sink_f()

        # self.throttle = blocks.throttle(4, 1e5, True)

        # connections
        # self.tb.connect((self.src1, 0), (self.throttle, 0))
        # self.tb.connect((self.throttle, 0), (self.int_to_float, 0))
        self.tb.connect((self.src1, 0), (self.int_to_float, 0))
        self.tb.connect((self.int_to_float, 0), (self.ook_decoder, 0))
        self.tb.msg_connect(self.ook_decoder, "out", self.message_sink, "in")
        # self.tb.connect(self.ook_decoder, self.snk)

        # print(self.ook_decoder)

        self.tb.run()

        # check data
        self.results = self.message_sink.data()
        # print(self.ook_decoder)

if __name__ == '__main__':
    gr_unittest.run(qa_OOKDecoder)
