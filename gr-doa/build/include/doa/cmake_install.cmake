# Install script for directory: /home/jhunhong/gnuradio-doa/gr-doa/include/doa

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/doa" TYPE FILE FILES
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/api.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/capon_ccf.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/unwrap_ff.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/linearslope_ff.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/mode_ii.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/lin_delay_cc.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/peak_estimator_cif.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/cub_delay_cc.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/cumulative_ff.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/variance_ff.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/zero_pad_cc.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/sample_offset_cci.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/hold_ii.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/hold_ff.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/full_capon_ccf.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/full_capon3_ccf.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/multiply_exp_cc.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/pi2pi_ff.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/delay.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/message_sink_i.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/message_sink_f.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/add_const_ff.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/phase2doa_ff.h"
    "/home/jhunhong/gnuradio-doa/gr-doa/include/doa/hold_state_ff.h"
    )
endif()

