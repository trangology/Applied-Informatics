# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\ITMO\2nd-year\Applied-Informatics\homework04

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\ITMO\2nd-year\Applied-Informatics\homework04\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/homework04.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/homework04.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/homework04.dir/flags.make

CMakeFiles/homework04.dir/main.cpp.obj: CMakeFiles/homework04.dir/flags.make
CMakeFiles/homework04.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\ITMO\2nd-year\Applied-Informatics\homework04\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/homework04.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\homework04.dir\main.cpp.obj -c D:\ITMO\2nd-year\Applied-Informatics\homework04\main.cpp

CMakeFiles/homework04.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/homework04.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\ITMO\2nd-year\Applied-Informatics\homework04\main.cpp > CMakeFiles\homework04.dir\main.cpp.i

CMakeFiles/homework04.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/homework04.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\ITMO\2nd-year\Applied-Informatics\homework04\main.cpp -o CMakeFiles\homework04.dir\main.cpp.s

# Object files for target homework04
homework04_OBJECTS = \
"CMakeFiles/homework04.dir/main.cpp.obj"

# External object files for target homework04
homework04_EXTERNAL_OBJECTS =

homework04.exe: CMakeFiles/homework04.dir/main.cpp.obj
homework04.exe: CMakeFiles/homework04.dir/build.make
homework04.exe: strategies/libstrategies.a
homework04.exe: game/libgame.a
homework04.exe: CMakeFiles/homework04.dir/linklibs.rsp
homework04.exe: CMakeFiles/homework04.dir/objects1.rsp
homework04.exe: CMakeFiles/homework04.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\ITMO\2nd-year\Applied-Informatics\homework04\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable homework04.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\homework04.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/homework04.dir/build: homework04.exe

.PHONY : CMakeFiles/homework04.dir/build

CMakeFiles/homework04.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\homework04.dir\cmake_clean.cmake
.PHONY : CMakeFiles/homework04.dir/clean

CMakeFiles/homework04.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\ITMO\2nd-year\Applied-Informatics\homework04 D:\ITMO\2nd-year\Applied-Informatics\homework04 D:\ITMO\2nd-year\Applied-Informatics\homework04\cmake-build-debug D:\ITMO\2nd-year\Applied-Informatics\homework04\cmake-build-debug D:\ITMO\2nd-year\Applied-Informatics\homework04\cmake-build-debug\CMakeFiles\homework04.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/homework04.dir/depend
