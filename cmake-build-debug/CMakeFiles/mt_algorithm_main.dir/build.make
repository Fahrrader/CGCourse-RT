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

# Include any dependencies generated for this target.
include CMakeFiles/mt_algorithm_main.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mt_algorithm_main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mt_algorithm_main.dir/flags.make

CMakeFiles/mt_algorithm_main.dir/src/mt_algorithm_main.cpp.o: CMakeFiles/mt_algorithm_main.dir/flags.make
CMakeFiles/mt_algorithm_main.dir/src/mt_algorithm_main.cpp.o: ../src/mt_algorithm_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/d/GitHub/CGCourse-RT/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mt_algorithm_main.dir/src/mt_algorithm_main.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mt_algorithm_main.dir/src/mt_algorithm_main.cpp.o -c /cygdrive/d/GitHub/CGCourse-RT/src/mt_algorithm_main.cpp

CMakeFiles/mt_algorithm_main.dir/src/mt_algorithm_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mt_algorithm_main.dir/src/mt_algorithm_main.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/d/GitHub/CGCourse-RT/src/mt_algorithm_main.cpp > CMakeFiles/mt_algorithm_main.dir/src/mt_algorithm_main.cpp.i

CMakeFiles/mt_algorithm_main.dir/src/mt_algorithm_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mt_algorithm_main.dir/src/mt_algorithm_main.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/d/GitHub/CGCourse-RT/src/mt_algorithm_main.cpp -o CMakeFiles/mt_algorithm_main.dir/src/mt_algorithm_main.cpp.s

# Object files for target mt_algorithm_main
mt_algorithm_main_OBJECTS = \
"CMakeFiles/mt_algorithm_main.dir/src/mt_algorithm_main.cpp.o"

# External object files for target mt_algorithm_main
mt_algorithm_main_EXTERNAL_OBJECTS =

mt_algorithm_main.exe: CMakeFiles/mt_algorithm_main.dir/src/mt_algorithm_main.cpp.o
mt_algorithm_main.exe: CMakeFiles/mt_algorithm_main.dir/build.make
mt_algorithm_main.exe: libcg.a
mt_algorithm_main.exe: CMakeFiles/mt_algorithm_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/d/GitHub/CGCourse-RT/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable mt_algorithm_main.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mt_algorithm_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mt_algorithm_main.dir/build: mt_algorithm_main.exe

.PHONY : CMakeFiles/mt_algorithm_main.dir/build

CMakeFiles/mt_algorithm_main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mt_algorithm_main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mt_algorithm_main.dir/clean

CMakeFiles/mt_algorithm_main.dir/depend:
	cd /cygdrive/d/GitHub/CGCourse-RT/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/d/GitHub/CGCourse-RT /cygdrive/d/GitHub/CGCourse-RT /cygdrive/d/GitHub/CGCourse-RT/cmake-build-debug /cygdrive/d/GitHub/CGCourse-RT/cmake-build-debug /cygdrive/d/GitHub/CGCourse-RT/cmake-build-debug/CMakeFiles/mt_algorithm_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mt_algorithm_main.dir/depend

