# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /cygdrive/c/Users/Farhad/.CLion2019.3/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/Farhad/.CLion2019.3/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/d/GitHub/CGCourse-RT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/d/GitHub/CGCourse-RT/cmake-build-debug

# Utility rule file for ExperimentalConfigure.

# Include the progress variables for this target.
include lib/catch2/CMakeFiles/ExperimentalConfigure.dir/progress.make

lib/catch2/CMakeFiles/ExperimentalConfigure:
	cd /cygdrive/d/GitHub/CGCourse-RT/cmake-build-debug/lib/catch2 && /cygdrive/c/Users/Farhad/.CLion2019.3/system/cygwin_cmake/bin/ctest.exe -D ExperimentalConfigure

ExperimentalConfigure: lib/catch2/CMakeFiles/ExperimentalConfigure
ExperimentalConfigure: lib/catch2/CMakeFiles/ExperimentalConfigure.dir/build.make

.PHONY : ExperimentalConfigure

# Rule to build all files generated by this target.
lib/catch2/CMakeFiles/ExperimentalConfigure.dir/build: ExperimentalConfigure

.PHONY : lib/catch2/CMakeFiles/ExperimentalConfigure.dir/build

lib/catch2/CMakeFiles/ExperimentalConfigure.dir/clean:
	cd /cygdrive/d/GitHub/CGCourse-RT/cmake-build-debug/lib/catch2 && $(CMAKE_COMMAND) -P CMakeFiles/ExperimentalConfigure.dir/cmake_clean.cmake
.PHONY : lib/catch2/CMakeFiles/ExperimentalConfigure.dir/clean

lib/catch2/CMakeFiles/ExperimentalConfigure.dir/depend:
	cd /cygdrive/d/GitHub/CGCourse-RT/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/d/GitHub/CGCourse-RT /cygdrive/d/GitHub/CGCourse-RT/lib/catch2 /cygdrive/d/GitHub/CGCourse-RT/cmake-build-debug /cygdrive/d/GitHub/CGCourse-RT/cmake-build-debug/lib/catch2 /cygdrive/d/GitHub/CGCourse-RT/cmake-build-debug/lib/catch2/CMakeFiles/ExperimentalConfigure.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/catch2/CMakeFiles/ExperimentalConfigure.dir/depend

