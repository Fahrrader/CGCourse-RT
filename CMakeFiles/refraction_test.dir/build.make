# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.3.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.3.3\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\GitHub\CGCourse-RT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\GitHub\CGCourse-RT

# Include any dependencies generated for this target.
include CMakeFiles/refraction_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/refraction_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/refraction_test.dir/flags.make

CMakeFiles/refraction_test.dir/tests/refraction_tests.cpp.obj: CMakeFiles/refraction_test.dir/flags.make
CMakeFiles/refraction_test.dir/tests/refraction_tests.cpp.obj: CMakeFiles/refraction_test.dir/includes_CXX.rsp
CMakeFiles/refraction_test.dir/tests/refraction_tests.cpp.obj: tests/refraction_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\GitHub\CGCourse-RT\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/refraction_test.dir/tests/refraction_tests.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\refraction_test.dir\tests\refraction_tests.cpp.obj -c D:\GitHub\CGCourse-RT\tests\refraction_tests.cpp

CMakeFiles/refraction_test.dir/tests/refraction_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/refraction_test.dir/tests/refraction_tests.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\GitHub\CGCourse-RT\tests\refraction_tests.cpp > CMakeFiles\refraction_test.dir\tests\refraction_tests.cpp.i

CMakeFiles/refraction_test.dir/tests/refraction_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/refraction_test.dir/tests/refraction_tests.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\GitHub\CGCourse-RT\tests\refraction_tests.cpp -o CMakeFiles\refraction_test.dir\tests\refraction_tests.cpp.s

# Object files for target refraction_test
refraction_test_OBJECTS = \
"CMakeFiles/refraction_test.dir/tests/refraction_tests.cpp.obj"

# External object files for target refraction_test
refraction_test_EXTERNAL_OBJECTS =

refraction_test.exe: CMakeFiles/refraction_test.dir/tests/refraction_tests.cpp.obj
refraction_test.exe: CMakeFiles/refraction_test.dir/build.make
refraction_test.exe: libcg.a
refraction_test.exe: CMakeFiles/refraction_test.dir/linklibs.rsp
refraction_test.exe: CMakeFiles/refraction_test.dir/objects1.rsp
refraction_test.exe: CMakeFiles/refraction_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\GitHub\CGCourse-RT\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable refraction_test.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\refraction_test.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/refraction_test.dir/build: refraction_test.exe

.PHONY : CMakeFiles/refraction_test.dir/build

CMakeFiles/refraction_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\refraction_test.dir\cmake_clean.cmake
.PHONY : CMakeFiles/refraction_test.dir/clean

CMakeFiles/refraction_test.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\GitHub\CGCourse-RT D:\GitHub\CGCourse-RT D:\GitHub\CGCourse-RT D:\GitHub\CGCourse-RT D:\GitHub\CGCourse-RT\CMakeFiles\refraction_test.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/refraction_test.dir/depend

