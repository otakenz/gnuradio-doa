# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jhunhong/gnuradio-doa/gr-doa

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jhunhong/gnuradio-doa/gr-doa/build

# Include any dependencies generated for this target.
include swig/CMakeFiles/doa_swig.dir/depend.make

# Include the progress variables for this target.
include swig/CMakeFiles/doa_swig.dir/progress.make

# Include the compile flags for this target's objects.
include swig/CMakeFiles/doa_swig.dir/flags.make

swig/CMakeFiles/doa_swig.dir/CMakeFiles/doa_swig.dir/doa_swigPYTHON_wrap.cxx.o: swig/CMakeFiles/doa_swig.dir/flags.make
swig/CMakeFiles/doa_swig.dir/CMakeFiles/doa_swig.dir/doa_swigPYTHON_wrap.cxx.o: swig/CMakeFiles/doa_swig.dir/doa_swigPYTHON_wrap.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jhunhong/gnuradio-doa/gr-doa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object swig/CMakeFiles/doa_swig.dir/CMakeFiles/doa_swig.dir/doa_swigPYTHON_wrap.cxx.o"
	cd /home/jhunhong/gnuradio-doa/gr-doa/build/swig && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/doa_swig.dir/CMakeFiles/doa_swig.dir/doa_swigPYTHON_wrap.cxx.o -c /home/jhunhong/gnuradio-doa/gr-doa/build/swig/CMakeFiles/doa_swig.dir/doa_swigPYTHON_wrap.cxx

swig/CMakeFiles/doa_swig.dir/CMakeFiles/doa_swig.dir/doa_swigPYTHON_wrap.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/doa_swig.dir/CMakeFiles/doa_swig.dir/doa_swigPYTHON_wrap.cxx.i"
	cd /home/jhunhong/gnuradio-doa/gr-doa/build/swig && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jhunhong/gnuradio-doa/gr-doa/build/swig/CMakeFiles/doa_swig.dir/doa_swigPYTHON_wrap.cxx > CMakeFiles/doa_swig.dir/CMakeFiles/doa_swig.dir/doa_swigPYTHON_wrap.cxx.i

swig/CMakeFiles/doa_swig.dir/CMakeFiles/doa_swig.dir/doa_swigPYTHON_wrap.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/doa_swig.dir/CMakeFiles/doa_swig.dir/doa_swigPYTHON_wrap.cxx.s"
	cd /home/jhunhong/gnuradio-doa/gr-doa/build/swig && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jhunhong/gnuradio-doa/gr-doa/build/swig/CMakeFiles/doa_swig.dir/doa_swigPYTHON_wrap.cxx -o CMakeFiles/doa_swig.dir/CMakeFiles/doa_swig.dir/doa_swigPYTHON_wrap.cxx.s

# Object files for target doa_swig
doa_swig_OBJECTS = \
"CMakeFiles/doa_swig.dir/CMakeFiles/doa_swig.dir/doa_swigPYTHON_wrap.cxx.o"

# External object files for target doa_swig
doa_swig_EXTERNAL_OBJECTS =

swig/_doa_swig.so: swig/CMakeFiles/doa_swig.dir/CMakeFiles/doa_swig.dir/doa_swigPYTHON_wrap.cxx.o
swig/_doa_swig.so: swig/CMakeFiles/doa_swig.dir/build.make
swig/_doa_swig.so: lib/libgnuradio-doa.so.v1.0-compat-xxx-xunknown
swig/_doa_swig.so: /usr/lib/x86_64-linux-gnu/libpython3.8.so
swig/_doa_swig.so: /home/jhunhong/gnuradio/lib/libgnuradio-fft.so.v3.8.2.0-80-g40c04cae
swig/_doa_swig.so: /home/jhunhong/gnuradio/lib/libgnuradio-runtime.so.v3.8.2.0-80-g40c04cae
swig/_doa_swig.so: /home/jhunhong/gnuradio/lib/libgnuradio-pmt.so.v3.8.2.0-80-g40c04cae
swig/_doa_swig.so: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
swig/_doa_swig.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
swig/_doa_swig.so: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
swig/_doa_swig.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
swig/_doa_swig.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
swig/_doa_swig.so: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
swig/_doa_swig.so: /usr/lib/x86_64-linux-gnu/liblog4cpp.so
swig/_doa_swig.so: /usr/lib/x86_64-linux-gnu/libgmpxx.so
swig/_doa_swig.so: /usr/lib/x86_64-linux-gnu/libgmp.so
swig/_doa_swig.so: /home/jhunhong/gnuradio/lib/libvolk.so.2.0
swig/_doa_swig.so: /usr/lib/x86_64-linux-gnu/libfftw3f.so
swig/_doa_swig.so: /usr/lib/x86_64-linux-gnu/libfftw3f_threads.so
swig/_doa_swig.so: swig/CMakeFiles/doa_swig.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jhunhong/gnuradio-doa/gr-doa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module _doa_swig.so"
	cd /home/jhunhong/gnuradio-doa/gr-doa/build/swig && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/doa_swig.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
swig/CMakeFiles/doa_swig.dir/build: swig/_doa_swig.so

.PHONY : swig/CMakeFiles/doa_swig.dir/build

swig/CMakeFiles/doa_swig.dir/clean:
	cd /home/jhunhong/gnuradio-doa/gr-doa/build/swig && $(CMAKE_COMMAND) -P CMakeFiles/doa_swig.dir/cmake_clean.cmake
.PHONY : swig/CMakeFiles/doa_swig.dir/clean

swig/CMakeFiles/doa_swig.dir/depend:
	cd /home/jhunhong/gnuradio-doa/gr-doa/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jhunhong/gnuradio-doa/gr-doa /home/jhunhong/gnuradio-doa/gr-doa/swig /home/jhunhong/gnuradio-doa/gr-doa/build /home/jhunhong/gnuradio-doa/gr-doa/build/swig /home/jhunhong/gnuradio-doa/gr-doa/build/swig/CMakeFiles/doa_swig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : swig/CMakeFiles/doa_swig.dir/depend
