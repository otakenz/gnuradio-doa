# Install script for directory: /home/jhunhong/gnuradio-doa/gr-doa/grc

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/jhunhong/gnuradio")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/grc/blocks" TYPE FILE FILES
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_capon_ccf.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_timestamp_ccf.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_unwrap_ff.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_linearslope_ff.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_mode_ii.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_lin_delay_cc.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_peak_estimator_cif.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_cub_delay_cc.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_cumulative_ff.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_variance_ff.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_zero_pad_cc.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_sample_offset_cci.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_hold_ii.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_hold_ff.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_full_capon_ccf.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_full_capon3_ccf.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_multiply_exp_cc.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_pi2pi_ff.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_arrow_f.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_delay.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_message_sink_i.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_message_sink_f.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_add_const_ff.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_phase2doa_ff.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_hold_state_ff.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_compass.block.yml"
    "/home/jhunhong/gnuradio-doa/gr-doa/grc/doa_semicircle.block.yml"
    )
endif()

