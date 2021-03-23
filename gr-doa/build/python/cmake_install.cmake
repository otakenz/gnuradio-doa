# Install script for directory: /home/jhunhong/gnuradio-doa/gr-doa/python

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/doa" TYPE FILE FILES
    "/home/jhunhong/gnuradio-doa/gr-doa/python/__init__.py"
    "/home/jhunhong/gnuradio-doa/gr-doa/python/timestamp_ccf.py"
    "/home/jhunhong/gnuradio-doa/gr-doa/python/arrow_f.py"
    "/home/jhunhong/gnuradio-doa/gr-doa/python/compass.py"
    "/home/jhunhong/gnuradio-doa/gr-doa/python/semicircle.py"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/doa" TYPE FILE FILES
    "/home/jhunhong/gnuradio-doa/gr-doa/build/python/__init__.pyc"
    "/home/jhunhong/gnuradio-doa/gr-doa/build/python/timestamp_ccf.pyc"
    "/home/jhunhong/gnuradio-doa/gr-doa/build/python/arrow_f.pyc"
    "/home/jhunhong/gnuradio-doa/gr-doa/build/python/compass.pyc"
    "/home/jhunhong/gnuradio-doa/gr-doa/build/python/semicircle.pyc"
    "/home/jhunhong/gnuradio-doa/gr-doa/build/python/__init__.pyo"
    "/home/jhunhong/gnuradio-doa/gr-doa/build/python/timestamp_ccf.pyo"
    "/home/jhunhong/gnuradio-doa/gr-doa/build/python/arrow_f.pyo"
    "/home/jhunhong/gnuradio-doa/gr-doa/build/python/compass.pyo"
    "/home/jhunhong/gnuradio-doa/gr-doa/build/python/semicircle.pyo"
    )
endif()

