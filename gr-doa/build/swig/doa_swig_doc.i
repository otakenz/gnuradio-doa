
/*
 * This file was automatically generated using swig_doc.py.
 *
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr::doa::add_const_ff "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::add_const_ff.

To avoid accidental use of raw pointers, doa::add_const_ff's constructor is in a private implementation class. doa::add_const_ff::make is the public interface for creating new instances."



%feature("docstring") gr::doa::add_const_ff::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::add_const_ff.

To avoid accidental use of raw pointers, doa::add_const_ff's constructor is in a private implementation class. doa::add_const_ff::make is the public interface for creating new instances."

%feature("docstring") gr::doa::capon_ccf "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::capon_ccf.

To avoid accidental use of raw pointers, doa::capon_ccf's constructor is in a private implementation class. doa::capon_ccf::make is the public interface for creating new instances.

Args:
    vector_size : "

%feature("docstring") gr::doa::capon_ccf::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::capon_ccf.

To avoid accidental use of raw pointers, doa::capon_ccf's constructor is in a private implementation class. doa::capon_ccf::make is the public interface for creating new instances.

Args:
    vector_size : "

%feature("docstring") gr::doa::cub_delay_cc "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::cub_delay_cc.

To avoid accidental use of raw pointers, doa::cub_delay_cc's constructor is in a private implementation class. doa::cub_delay_cc::make is the public interface for creating new instances.

Args:
    samp_rate : 
    delay : "





%feature("docstring") gr::doa::cub_delay_cc::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::cub_delay_cc.

To avoid accidental use of raw pointers, doa::cub_delay_cc's constructor is in a private implementation class. doa::cub_delay_cc::make is the public interface for creating new instances.

Args:
    samp_rate : 
    delay : "

%feature("docstring") gr::doa::cumulative_ff "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::cumulative_ff.

To avoid accidental use of raw pointers, doa::cumulative_ff's constructor is in a private implementation class. doa::cumulative_ff::make is the public interface for creating new instances.

Args:
    start : "

%feature("docstring") gr::doa::cumulative_ff::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::cumulative_ff.

To avoid accidental use of raw pointers, doa::cumulative_ff's constructor is in a private implementation class. doa::cumulative_ff::make is the public interface for creating new instances.

Args:
    start : "

%feature("docstring") gr::doa::delay "delay the input by a certain number of samples

Positive delays insert zero items at the beginning of the stream. Negative delays discard items from the stream.


You cannot initialize this block with a negative delay, however. That leads to a causality issue with the buffers when they are initialized. If you need to negetively delay one path, then put the positive delay on the other path instead.

Constructor Specific Documentation:

Make a delay block.

Args:
    itemsize : size of the data items.
    delay : number of samples to delay stream (>= 0)."



%feature("docstring") gr::doa::delay::set_dly "Reset the delay."

%feature("docstring") gr::doa::delay::make "delay the input by a certain number of samples

Positive delays insert zero items at the beginning of the stream. Negative delays discard items from the stream.


You cannot initialize this block with a negative delay, however. That leads to a causality issue with the buffers when they are initialized. If you need to negetively delay one path, then put the positive delay on the other path instead.

Constructor Specific Documentation:

Make a delay block.

Args:
    itemsize : size of the data items.
    delay : number of samples to delay stream (>= 0)."

%feature("docstring") gr::doa::full_capon3_ccf "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::full_capon3_ccf.

To avoid accidental use of raw pointers, doa::full_capon3_ccf's constructor is in a private implementation class. doa::full_capon3_ccf::make is the public interface for creating new instances.

Args:
    vec_in : 
    vec_out : "

%feature("docstring") gr::doa::full_capon3_ccf::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::full_capon3_ccf.

To avoid accidental use of raw pointers, doa::full_capon3_ccf's constructor is in a private implementation class. doa::full_capon3_ccf::make is the public interface for creating new instances.

Args:
    vec_in : 
    vec_out : "

%feature("docstring") gr::doa::full_capon_ccf "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::full_capon_ccf.

To avoid accidental use of raw pointers, doa::full_capon_ccf's constructor is in a private implementation class. doa::full_capon_ccf::make is the public interface for creating new instances.

Args:
    vec_in : 
    vec_out : "

%feature("docstring") gr::doa::full_capon_ccf::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::full_capon_ccf.

To avoid accidental use of raw pointers, doa::full_capon_ccf's constructor is in a private implementation class. doa::full_capon_ccf::make is the public interface for creating new instances.

Args:
    vec_in : 
    vec_out : "

%feature("docstring") gr::doa::hold_ff "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::hold_ff.

To avoid accidental use of raw pointers, doa::hold_ff's constructor is in a private implementation class. doa::hold_ff::make is the public interface for creating new instances.

Args:
    hold : "





%feature("docstring") gr::doa::hold_ff::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::hold_ff.

To avoid accidental use of raw pointers, doa::hold_ff's constructor is in a private implementation class. doa::hold_ff::make is the public interface for creating new instances.

Args:
    hold : "

%feature("docstring") gr::doa::hold_ii "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::hold_ii.

To avoid accidental use of raw pointers, doa::hold_ii's constructor is in a private implementation class. doa::hold_ii::make is the public interface for creating new instances.

Args:
    hold : "





%feature("docstring") gr::doa::hold_ii::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::hold_ii.

To avoid accidental use of raw pointers, doa::hold_ii's constructor is in a private implementation class. doa::hold_ii::make is the public interface for creating new instances.

Args:
    hold : "

%feature("docstring") gr::doa::hold_state_ff "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::hold_state_ff.

To avoid accidental use of raw pointers, doa::hold_state_ff's constructor is in a private implementation class. doa::hold_state_ff::make is the public interface for creating new instances.

Args:
    state : 
    scale0 : 
    scale1 : "



%feature("docstring") gr::doa::hold_state_ff::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::hold_state_ff.

To avoid accidental use of raw pointers, doa::hold_state_ff's constructor is in a private implementation class. doa::hold_state_ff::make is the public interface for creating new instances.

Args:
    state : 
    scale0 : 
    scale1 : "

%feature("docstring") gr::doa::lin_delay_cc "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::lin_delay_cc.

To avoid accidental use of raw pointers, doa::lin_delay_cc's constructor is in a private implementation class. doa::lin_delay_cc::make is the public interface for creating new instances.

Args:
    samp_rate : 
    delay : "





%feature("docstring") gr::doa::lin_delay_cc::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::lin_delay_cc.

To avoid accidental use of raw pointers, doa::lin_delay_cc's constructor is in a private implementation class. doa::lin_delay_cc::make is the public interface for creating new instances.

Args:
    samp_rate : 
    delay : "

%feature("docstring") gr::doa::linearslope_ff "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::linearslope_ff.

To avoid accidental use of raw pointers, doa::linearslope_ff's constructor is in a private implementation class. doa::linearslope_ff::make is the public interface for creating new instances.

Args:
    vector_size : "

%feature("docstring") gr::doa::linearslope_ff::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::linearslope_ff.

To avoid accidental use of raw pointers, doa::linearslope_ff's constructor is in a private implementation class. doa::linearslope_ff::make is the public interface for creating new instances.

Args:
    vector_size : "

%feature("docstring") gr::doa::message_sink_f "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::message_sink_f.

To avoid accidental use of raw pointers, doa::message_sink_f's constructor is in a private implementation class. doa::message_sink_f::make is the public interface for creating new instances."

%feature("docstring") gr::doa::message_sink_f::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::message_sink_f.

To avoid accidental use of raw pointers, doa::message_sink_f's constructor is in a private implementation class. doa::message_sink_f::make is the public interface for creating new instances."

%feature("docstring") gr::doa::message_sink_i "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::message_sink_i.

To avoid accidental use of raw pointers, doa::message_sink_i's constructor is in a private implementation class. doa::message_sink_i::make is the public interface for creating new instances."

%feature("docstring") gr::doa::message_sink_i::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::message_sink_i.

To avoid accidental use of raw pointers, doa::message_sink_i's constructor is in a private implementation class. doa::message_sink_i::make is the public interface for creating new instances."

%feature("docstring") gr::doa::mode_ii "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::mode_ii.

To avoid accidental use of raw pointers, doa::mode_ii's constructor is in a private implementation class. doa::mode_ii::make is the public interface for creating new instances.

Args:
    vector_size : 
    max_value : "

%feature("docstring") gr::doa::mode_ii::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::mode_ii.

To avoid accidental use of raw pointers, doa::mode_ii's constructor is in a private implementation class. doa::mode_ii::make is the public interface for creating new instances.

Args:
    vector_size : 
    max_value : "

%feature("docstring") gr::doa::multiply_exp_cc "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::multiply_exp_cc.

To avoid accidental use of raw pointers, doa::multiply_exp_cc's constructor is in a private implementation class. doa::multiply_exp_cc::make is the public interface for creating new instances.

Args:
    arg : "



%feature("docstring") gr::doa::multiply_exp_cc::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::multiply_exp_cc.

To avoid accidental use of raw pointers, doa::multiply_exp_cc's constructor is in a private implementation class. doa::multiply_exp_cc::make is the public interface for creating new instances.

Args:
    arg : "

%feature("docstring") gr::doa::peak_estimator_cif "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::peak_estimator_cif.

To avoid accidental use of raw pointers, doa::peak_estimator_cif's constructor is in a private implementation class. doa::peak_estimator_cif::make is the public interface for creating new instances.

Args:
    vector_len : "

%feature("docstring") gr::doa::peak_estimator_cif::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::peak_estimator_cif.

To avoid accidental use of raw pointers, doa::peak_estimator_cif's constructor is in a private implementation class. doa::peak_estimator_cif::make is the public interface for creating new instances.

Args:
    vector_len : "

%feature("docstring") gr::doa::phase2doa_ff "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::phase2doa_ff.

To avoid accidental use of raw pointers, doa::phase2doa_ff's constructor is in a private implementation class. doa::phase2doa_ff::make is the public interface for creating new instances.

Args:
    alpha : "

%feature("docstring") gr::doa::phase2doa_ff::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::phase2doa_ff.

To avoid accidental use of raw pointers, doa::phase2doa_ff's constructor is in a private implementation class. doa::phase2doa_ff::make is the public interface for creating new instances.

Args:
    alpha : "

%feature("docstring") gr::doa::pi2pi_ff "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::pi2pi_ff.

To avoid accidental use of raw pointers, doa::pi2pi_ff's constructor is in a private implementation class. doa::pi2pi_ff::make is the public interface for creating new instances."

%feature("docstring") gr::doa::pi2pi_ff::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::pi2pi_ff.

To avoid accidental use of raw pointers, doa::pi2pi_ff's constructor is in a private implementation class. doa::pi2pi_ff::make is the public interface for creating new instances."

%feature("docstring") gr::doa::sample_offset_cci "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::sample_offset_cci.

To avoid accidental use of raw pointers, doa::sample_offset_cci's constructor is in a private implementation class. doa::sample_offset_cci::make is the public interface for creating new instances.

Args:
    vector_len : 
    num_xcorr : "

%feature("docstring") gr::doa::sample_offset_cci::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::sample_offset_cci.

To avoid accidental use of raw pointers, doa::sample_offset_cci's constructor is in a private implementation class. doa::sample_offset_cci::make is the public interface for creating new instances.

Args:
    vector_len : 
    num_xcorr : "

%feature("docstring") gr::doa::unwrap_ff "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::unwrap_ff.

To avoid accidental use of raw pointers, doa::unwrap_ff's constructor is in a private implementation class. doa::unwrap_ff::make is the public interface for creating new instances.

Args:
    vector_size : 
    min : 
    max : "

%feature("docstring") gr::doa::unwrap_ff::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::unwrap_ff.

To avoid accidental use of raw pointers, doa::unwrap_ff's constructor is in a private implementation class. doa::unwrap_ff::make is the public interface for creating new instances.

Args:
    vector_size : 
    min : 
    max : "

%feature("docstring") gr::doa::variance_ff "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::variance_ff.

To avoid accidental use of raw pointers, doa::variance_ff's constructor is in a private implementation class. doa::variance_ff::make is the public interface for creating new instances.

Args:
    vec_len : "

%feature("docstring") gr::doa::variance_ff::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::variance_ff.

To avoid accidental use of raw pointers, doa::variance_ff's constructor is in a private implementation class. doa::variance_ff::make is the public interface for creating new instances.

Args:
    vec_len : "

%feature("docstring") gr::doa::zero_pad_cc "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::zero_pad_cc.

To avoid accidental use of raw pointers, doa::zero_pad_cc's constructor is in a private implementation class. doa::zero_pad_cc::make is the public interface for creating new instances.

Args:
    vec_len_in : 
    vec_len_out : "

%feature("docstring") gr::doa::zero_pad_cc::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of doa::zero_pad_cc.

To avoid accidental use of raw pointers, doa::zero_pad_cc's constructor is in a private implementation class. doa::zero_pad_cc::make is the public interface for creating new instances.

Args:
    vec_len_in : 
    vec_len_out : "