# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Lennard/Github/Bs-Prak

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Lennard/Github/Bs-Prak/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Bs_Prak.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Bs_Prak.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Bs_Prak.dir/flags.make

CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.o: CMakeFiles/Bs_Prak.dir/flags.make
CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.o: ../src/driver/uart_driver.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Lennard/Github/Bs-Prak/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.o   -c /Users/Lennard/Github/Bs-Prak/src/driver/uart_driver.c

CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Lennard/Github/Bs-Prak/src/driver/uart_driver.c > CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.i

CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Lennard/Github/Bs-Prak/src/driver/uart_driver.c -o CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.s

CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.o.requires:

.PHONY : CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.o.requires

CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.o.provides: CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.o.requires
	$(MAKE) -f CMakeFiles/Bs_Prak.dir/build.make CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.o.provides.build
.PHONY : CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.o.provides

CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.o.provides.build: CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.o


CMakeFiles/Bs_Prak.dir/src/lib/uart.c.o: CMakeFiles/Bs_Prak.dir/flags.make
CMakeFiles/Bs_Prak.dir/src/lib/uart.c.o: ../src/lib/uart.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Lennard/Github/Bs-Prak/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Bs_Prak.dir/src/lib/uart.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Bs_Prak.dir/src/lib/uart.c.o   -c /Users/Lennard/Github/Bs-Prak/src/lib/uart.c

CMakeFiles/Bs_Prak.dir/src/lib/uart.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Bs_Prak.dir/src/lib/uart.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Lennard/Github/Bs-Prak/src/lib/uart.c > CMakeFiles/Bs_Prak.dir/src/lib/uart.c.i

CMakeFiles/Bs_Prak.dir/src/lib/uart.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Bs_Prak.dir/src/lib/uart.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Lennard/Github/Bs-Prak/src/lib/uart.c -o CMakeFiles/Bs_Prak.dir/src/lib/uart.c.s

CMakeFiles/Bs_Prak.dir/src/lib/uart.c.o.requires:

.PHONY : CMakeFiles/Bs_Prak.dir/src/lib/uart.c.o.requires

CMakeFiles/Bs_Prak.dir/src/lib/uart.c.o.provides: CMakeFiles/Bs_Prak.dir/src/lib/uart.c.o.requires
	$(MAKE) -f CMakeFiles/Bs_Prak.dir/build.make CMakeFiles/Bs_Prak.dir/src/lib/uart.c.o.provides.build
.PHONY : CMakeFiles/Bs_Prak.dir/src/lib/uart.c.o.provides

CMakeFiles/Bs_Prak.dir/src/lib/uart.c.o.provides.build: CMakeFiles/Bs_Prak.dir/src/lib/uart.c.o


CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.o: CMakeFiles/Bs_Prak.dir/flags.make
CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.o: ../src/bs-logic/Interrupt_Handler.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Lennard/Github/Bs-Prak/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.o   -c /Users/Lennard/Github/Bs-Prak/src/bs-logic/Interrupt_Handler.c

CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Lennard/Github/Bs-Prak/src/bs-logic/Interrupt_Handler.c > CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.i

CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Lennard/Github/Bs-Prak/src/bs-logic/Interrupt_Handler.c -o CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.s

CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.o.requires:

.PHONY : CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.o.requires

CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.o.provides: CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.o.requires
	$(MAKE) -f CMakeFiles/Bs_Prak.dir/build.make CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.o.provides.build
.PHONY : CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.o.provides

CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.o.provides.build: CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.o


# Object files for target Bs_Prak
Bs_Prak_OBJECTS = \
"CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.o" \
"CMakeFiles/Bs_Prak.dir/src/lib/uart.c.o" \
"CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.o"

# External object files for target Bs_Prak
Bs_Prak_EXTERNAL_OBJECTS =

Bs_Prak: CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.o
Bs_Prak: CMakeFiles/Bs_Prak.dir/src/lib/uart.c.o
Bs_Prak: CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.o
Bs_Prak: CMakeFiles/Bs_Prak.dir/build.make
Bs_Prak: CMakeFiles/Bs_Prak.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Lennard/Github/Bs-Prak/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable Bs_Prak"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Bs_Prak.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Bs_Prak.dir/build: Bs_Prak

.PHONY : CMakeFiles/Bs_Prak.dir/build

CMakeFiles/Bs_Prak.dir/requires: CMakeFiles/Bs_Prak.dir/src/driver/uart_driver.c.o.requires
CMakeFiles/Bs_Prak.dir/requires: CMakeFiles/Bs_Prak.dir/src/lib/uart.c.o.requires
CMakeFiles/Bs_Prak.dir/requires: CMakeFiles/Bs_Prak.dir/src/bs-logic/Interrupt_Handler.c.o.requires

.PHONY : CMakeFiles/Bs_Prak.dir/requires

CMakeFiles/Bs_Prak.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Bs_Prak.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Bs_Prak.dir/clean

CMakeFiles/Bs_Prak.dir/depend:
	cd /Users/Lennard/Github/Bs-Prak/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Lennard/Github/Bs-Prak /Users/Lennard/Github/Bs-Prak /Users/Lennard/Github/Bs-Prak/cmake-build-debug /Users/Lennard/Github/Bs-Prak/cmake-build-debug /Users/Lennard/Github/Bs-Prak/cmake-build-debug/CMakeFiles/Bs_Prak.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Bs_Prak.dir/depend
