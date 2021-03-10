# cOPYRIGHT 2011 fREE sOFTWARE foundation, Inc.
#
# This file is part of GNU Radio
#
# GNU Radio is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
#
# GNU Radio is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with GNU Radio; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
install(FILES
    doa_capon_ccf.block.yml
    doa_timestamp_ccf.block.yml
    doa_unwrap_ff.block.yml
    doa_linearslope_ff.block.yml
    doa_mode_ii.block.yml
    doa_lin_delay_cc.block.yml
    doa_peak_estimator_cif.block.yml
    doa_cub_delay_cc.block.yml
    doa_cumulative_ff.block.yml
    doa_variance_ff.block.yml
    doa_zero_pad_cc.block.yml
    doa_sample_offset_cci.block.yml
    doa_hold_ii.block.yml
    doa_hold_ff.block.yml
    doa_full_capon_ccf.block.yml
    doa_full_capon3_ccf.block.yml
    doa_multiply_exp_cc.block.yml
    doa_pi2pi_ff.block.yml
    doa_arrow_f.block.yml
    doa_delay.block.yml
    doa_message_sink_i.block.yml
    doa_message_sink_f.block.yml
    doa_add_const_ff.block.yml
    doa_phase2doa_ff.block.yml
    doa_hold_state_ff.block.yml DESTINATION share/gnuradio/grc/blocks
)
