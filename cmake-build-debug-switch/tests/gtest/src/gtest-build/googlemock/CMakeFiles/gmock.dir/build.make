# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-build

# Include any dependencies generated for this target.
include googlemock/CMakeFiles/gmock.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include googlemock/CMakeFiles/gmock.dir/compiler_depend.make

# Include the progress variables for this target.
include googlemock/CMakeFiles/gmock.dir/progress.make

# Include the compile flags for this target's objects.
include googlemock/CMakeFiles/gmock.dir/flags.make

googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o: googlemock/CMakeFiles/gmock.dir/flags.make
googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o: /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest/googlemock/src/gmock-all.cc
googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o: googlemock/CMakeFiles/gmock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o"
	cd /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-build/googlemock && /usr/bin/clang++-17 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o -MF CMakeFiles/gmock.dir/src/gmock-all.cc.o.d -o CMakeFiles/gmock.dir/src/gmock-all.cc.o -c /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest/googlemock/src/gmock-all.cc

googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gmock.dir/src/gmock-all.cc.i"
	cd /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-build/googlemock && /usr/bin/clang++-17 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest/googlemock/src/gmock-all.cc > CMakeFiles/gmock.dir/src/gmock-all.cc.i

googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gmock.dir/src/gmock-all.cc.s"
	cd /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-build/googlemock && /usr/bin/clang++-17 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest/googlemock/src/gmock-all.cc -o CMakeFiles/gmock.dir/src/gmock-all.cc.s

# Object files for target gmock
gmock_OBJECTS = \
"CMakeFiles/gmock.dir/src/gmock-all.cc.o"

# External object files for target gmock
gmock_EXTERNAL_OBJECTS =

lib/libgmock.a: googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o
lib/libgmock.a: googlemock/CMakeFiles/gmock.dir/build.make
lib/libgmock.a: googlemock/CMakeFiles/gmock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../lib/libgmock.a"
	cd /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-build/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock.dir/cmake_clean_target.cmake
	cd /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-build/googlemock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gmock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
googlemock/CMakeFiles/gmock.dir/build: lib/libgmock.a
.PHONY : googlemock/CMakeFiles/gmock.dir/build

googlemock/CMakeFiles/gmock.dir/clean:
	cd /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-build/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock.dir/cmake_clean.cmake
.PHONY : googlemock/CMakeFiles/gmock.dir/clean

googlemock/CMakeFiles/gmock.dir/depend:
	cd /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest/googlemock /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-build /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-build/googlemock /tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-build/googlemock/CMakeFiles/gmock.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : googlemock/CMakeFiles/gmock.dir/depend

