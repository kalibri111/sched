# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_SOURCE_DIR = /tmp/tmp.1IfkmvHCTw

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host

# Include any dependencies generated for this target.
include src/CMakeFiles/sched.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/sched.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/sched.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/sched.dir/flags.make

src/CMakeFiles/sched.dir/stealing/coordinator.c.o: src/CMakeFiles/sched.dir/flags.make
src/CMakeFiles/sched.dir/stealing/coordinator.c.o: ../src/stealing/coordinator.c
src/CMakeFiles/sched.dir/stealing/coordinator.c.o: src/CMakeFiles/sched.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/sched.dir/stealing/coordinator.c.o"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/sched.dir/stealing/coordinator.c.o -MF CMakeFiles/sched.dir/stealing/coordinator.c.o.d -o CMakeFiles/sched.dir/stealing/coordinator.c.o -c /tmp/tmp.1IfkmvHCTw/src/stealing/coordinator.c

src/CMakeFiles/sched.dir/stealing/coordinator.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sched.dir/stealing/coordinator.c.i"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.1IfkmvHCTw/src/stealing/coordinator.c > CMakeFiles/sched.dir/stealing/coordinator.c.i

src/CMakeFiles/sched.dir/stealing/coordinator.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sched.dir/stealing/coordinator.c.s"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.1IfkmvHCTw/src/stealing/coordinator.c -o CMakeFiles/sched.dir/stealing/coordinator.c.s

src/CMakeFiles/sched.dir/stealing/queues/global.c.o: src/CMakeFiles/sched.dir/flags.make
src/CMakeFiles/sched.dir/stealing/queues/global.c.o: ../src/stealing/queues/global.c
src/CMakeFiles/sched.dir/stealing/queues/global.c.o: src/CMakeFiles/sched.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/sched.dir/stealing/queues/global.c.o"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/sched.dir/stealing/queues/global.c.o -MF CMakeFiles/sched.dir/stealing/queues/global.c.o.d -o CMakeFiles/sched.dir/stealing/queues/global.c.o -c /tmp/tmp.1IfkmvHCTw/src/stealing/queues/global.c

src/CMakeFiles/sched.dir/stealing/queues/global.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sched.dir/stealing/queues/global.c.i"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.1IfkmvHCTw/src/stealing/queues/global.c > CMakeFiles/sched.dir/stealing/queues/global.c.i

src/CMakeFiles/sched.dir/stealing/queues/global.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sched.dir/stealing/queues/global.c.s"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.1IfkmvHCTw/src/stealing/queues/global.c -o CMakeFiles/sched.dir/stealing/queues/global.c.s

src/CMakeFiles/sched.dir/stealing/queues/threadlocal.c.o: src/CMakeFiles/sched.dir/flags.make
src/CMakeFiles/sched.dir/stealing/queues/threadlocal.c.o: ../src/stealing/queues/threadlocal.c
src/CMakeFiles/sched.dir/stealing/queues/threadlocal.c.o: src/CMakeFiles/sched.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/CMakeFiles/sched.dir/stealing/queues/threadlocal.c.o"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/sched.dir/stealing/queues/threadlocal.c.o -MF CMakeFiles/sched.dir/stealing/queues/threadlocal.c.o.d -o CMakeFiles/sched.dir/stealing/queues/threadlocal.c.o -c /tmp/tmp.1IfkmvHCTw/src/stealing/queues/threadlocal.c

src/CMakeFiles/sched.dir/stealing/queues/threadlocal.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sched.dir/stealing/queues/threadlocal.c.i"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.1IfkmvHCTw/src/stealing/queues/threadlocal.c > CMakeFiles/sched.dir/stealing/queues/threadlocal.c.i

src/CMakeFiles/sched.dir/stealing/queues/threadlocal.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sched.dir/stealing/queues/threadlocal.c.s"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.1IfkmvHCTw/src/stealing/queues/threadlocal.c -o CMakeFiles/sched.dir/stealing/queues/threadlocal.c.s

src/CMakeFiles/sched.dir/stealing/scheduler.c.o: src/CMakeFiles/sched.dir/flags.make
src/CMakeFiles/sched.dir/stealing/scheduler.c.o: ../src/stealing/scheduler.c
src/CMakeFiles/sched.dir/stealing/scheduler.c.o: src/CMakeFiles/sched.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/CMakeFiles/sched.dir/stealing/scheduler.c.o"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/sched.dir/stealing/scheduler.c.o -MF CMakeFiles/sched.dir/stealing/scheduler.c.o.d -o CMakeFiles/sched.dir/stealing/scheduler.c.o -c /tmp/tmp.1IfkmvHCTw/src/stealing/scheduler.c

src/CMakeFiles/sched.dir/stealing/scheduler.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sched.dir/stealing/scheduler.c.i"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.1IfkmvHCTw/src/stealing/scheduler.c > CMakeFiles/sched.dir/stealing/scheduler.c.i

src/CMakeFiles/sched.dir/stealing/scheduler.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sched.dir/stealing/scheduler.c.s"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.1IfkmvHCTw/src/stealing/scheduler.c -o CMakeFiles/sched.dir/stealing/scheduler.c.s

src/CMakeFiles/sched.dir/stealing/task.c.o: src/CMakeFiles/sched.dir/flags.make
src/CMakeFiles/sched.dir/stealing/task.c.o: ../src/stealing/task.c
src/CMakeFiles/sched.dir/stealing/task.c.o: src/CMakeFiles/sched.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object src/CMakeFiles/sched.dir/stealing/task.c.o"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/sched.dir/stealing/task.c.o -MF CMakeFiles/sched.dir/stealing/task.c.o.d -o CMakeFiles/sched.dir/stealing/task.c.o -c /tmp/tmp.1IfkmvHCTw/src/stealing/task.c

src/CMakeFiles/sched.dir/stealing/task.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sched.dir/stealing/task.c.i"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.1IfkmvHCTw/src/stealing/task.c > CMakeFiles/sched.dir/stealing/task.c.i

src/CMakeFiles/sched.dir/stealing/task.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sched.dir/stealing/task.c.s"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.1IfkmvHCTw/src/stealing/task.c -o CMakeFiles/sched.dir/stealing/task.c.s

src/CMakeFiles/sched.dir/stealing/worker.c.o: src/CMakeFiles/sched.dir/flags.make
src/CMakeFiles/sched.dir/stealing/worker.c.o: ../src/stealing/worker.c
src/CMakeFiles/sched.dir/stealing/worker.c.o: src/CMakeFiles/sched.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object src/CMakeFiles/sched.dir/stealing/worker.c.o"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/sched.dir/stealing/worker.c.o -MF CMakeFiles/sched.dir/stealing/worker.c.o.d -o CMakeFiles/sched.dir/stealing/worker.c.o -c /tmp/tmp.1IfkmvHCTw/src/stealing/worker.c

src/CMakeFiles/sched.dir/stealing/worker.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sched.dir/stealing/worker.c.i"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.1IfkmvHCTw/src/stealing/worker.c > CMakeFiles/sched.dir/stealing/worker.c.i

src/CMakeFiles/sched.dir/stealing/worker.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sched.dir/stealing/worker.c.s"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.1IfkmvHCTw/src/stealing/worker.c -o CMakeFiles/sched.dir/stealing/worker.c.s

src/CMakeFiles/sched.dir/utils/list.c.o: src/CMakeFiles/sched.dir/flags.make
src/CMakeFiles/sched.dir/utils/list.c.o: ../src/utils/list.c
src/CMakeFiles/sched.dir/utils/list.c.o: src/CMakeFiles/sched.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object src/CMakeFiles/sched.dir/utils/list.c.o"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/sched.dir/utils/list.c.o -MF CMakeFiles/sched.dir/utils/list.c.o.d -o CMakeFiles/sched.dir/utils/list.c.o -c /tmp/tmp.1IfkmvHCTw/src/utils/list.c

src/CMakeFiles/sched.dir/utils/list.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sched.dir/utils/list.c.i"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.1IfkmvHCTw/src/utils/list.c > CMakeFiles/sched.dir/utils/list.c.i

src/CMakeFiles/sched.dir/utils/list.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sched.dir/utils/list.c.s"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.1IfkmvHCTw/src/utils/list.c -o CMakeFiles/sched.dir/utils/list.c.s

src/CMakeFiles/sched.dir/utils/park.c.o: src/CMakeFiles/sched.dir/flags.make
src/CMakeFiles/sched.dir/utils/park.c.o: ../src/utils/park.c
src/CMakeFiles/sched.dir/utils/park.c.o: src/CMakeFiles/sched.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object src/CMakeFiles/sched.dir/utils/park.c.o"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/sched.dir/utils/park.c.o -MF CMakeFiles/sched.dir/utils/park.c.o.d -o CMakeFiles/sched.dir/utils/park.c.o -c /tmp/tmp.1IfkmvHCTw/src/utils/park.c

src/CMakeFiles/sched.dir/utils/park.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sched.dir/utils/park.c.i"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.1IfkmvHCTw/src/utils/park.c > CMakeFiles/sched.dir/utils/park.c.i

src/CMakeFiles/sched.dir/utils/park.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sched.dir/utils/park.c.s"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.1IfkmvHCTw/src/utils/park.c -o CMakeFiles/sched.dir/utils/park.c.s

src/CMakeFiles/sched.dir/utils/waitgroup.c.o: src/CMakeFiles/sched.dir/flags.make
src/CMakeFiles/sched.dir/utils/waitgroup.c.o: ../src/utils/waitgroup.c
src/CMakeFiles/sched.dir/utils/waitgroup.c.o: src/CMakeFiles/sched.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object src/CMakeFiles/sched.dir/utils/waitgroup.c.o"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/sched.dir/utils/waitgroup.c.o -MF CMakeFiles/sched.dir/utils/waitgroup.c.o.d -o CMakeFiles/sched.dir/utils/waitgroup.c.o -c /tmp/tmp.1IfkmvHCTw/src/utils/waitgroup.c

src/CMakeFiles/sched.dir/utils/waitgroup.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sched.dir/utils/waitgroup.c.i"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.1IfkmvHCTw/src/utils/waitgroup.c > CMakeFiles/sched.dir/utils/waitgroup.c.i

src/CMakeFiles/sched.dir/utils/waitgroup.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sched.dir/utils/waitgroup.c.s"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.1IfkmvHCTw/src/utils/waitgroup.c -o CMakeFiles/sched.dir/utils/waitgroup.c.s

# Object files for target sched
sched_OBJECTS = \
"CMakeFiles/sched.dir/stealing/coordinator.c.o" \
"CMakeFiles/sched.dir/stealing/queues/global.c.o" \
"CMakeFiles/sched.dir/stealing/queues/threadlocal.c.o" \
"CMakeFiles/sched.dir/stealing/scheduler.c.o" \
"CMakeFiles/sched.dir/stealing/task.c.o" \
"CMakeFiles/sched.dir/stealing/worker.c.o" \
"CMakeFiles/sched.dir/utils/list.c.o" \
"CMakeFiles/sched.dir/utils/park.c.o" \
"CMakeFiles/sched.dir/utils/waitgroup.c.o"

# External object files for target sched
sched_EXTERNAL_OBJECTS =

src/libsched.a: src/CMakeFiles/sched.dir/stealing/coordinator.c.o
src/libsched.a: src/CMakeFiles/sched.dir/stealing/queues/global.c.o
src/libsched.a: src/CMakeFiles/sched.dir/stealing/queues/threadlocal.c.o
src/libsched.a: src/CMakeFiles/sched.dir/stealing/scheduler.c.o
src/libsched.a: src/CMakeFiles/sched.dir/stealing/task.c.o
src/libsched.a: src/CMakeFiles/sched.dir/stealing/worker.c.o
src/libsched.a: src/CMakeFiles/sched.dir/utils/list.c.o
src/libsched.a: src/CMakeFiles/sched.dir/utils/park.c.o
src/libsched.a: src/CMakeFiles/sched.dir/utils/waitgroup.c.o
src/libsched.a: src/CMakeFiles/sched.dir/build.make
src/libsched.a: src/CMakeFiles/sched.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking C static library libsched.a"
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && $(CMAKE_COMMAND) -P CMakeFiles/sched.dir/cmake_clean_target.cmake
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sched.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/sched.dir/build: src/libsched.a
.PHONY : src/CMakeFiles/sched.dir/build

src/CMakeFiles/sched.dir/clean:
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src && $(CMAKE_COMMAND) -P CMakeFiles/sched.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/sched.dir/clean

src/CMakeFiles/sched.dir/depend:
	cd /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.1IfkmvHCTw /tmp/tmp.1IfkmvHCTw/src /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src /tmp/tmp.1IfkmvHCTw/cmake-build-debug-remote-host/src/CMakeFiles/sched.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/sched.dir/depend

