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
include CMakeFiles/shadowray_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/shadowray_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/shadowray_test.dir/flags.make

CMakeFiles/shadowray_test.dir/tests/shadow_rays_tests.cpp.obj: CMakeFiles/shadowray_test.dir/flags.make
CMakeFiles/shadowray_test.dir/tests/shadow_rays_tests.cpp.obj: CMakeFiles/shadowray_test.dir/includes_CXX.rsp
CMakeFiles/shadowray_test.dir/tests/shadow_rays_tests.cpp.obj: tests/shadow_rays_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\GitHub\CGCourse-RT\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/shadowray_test.dir/tests/shadow_rays_tests.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\shadowray_test.dir\tests\shadow_rays_tests.cpp.obj -c D:\GitHub\CGCourse-RT\tests\shadow_rays_tests.cpp

CMakeFiles/shadowray_test.dir/tests/shadow_rays_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shadowray_test.dir/tests/shadow_rays_tests.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\GitHub\CGCourse-RT\tests\shadow_rays_tests.cpp > CMakeFiles\shadowray_test.dir\tests\shadow_rays_tests.cpp.i

CMakeFiles/shadowray_test.dir/tests/shadow_rays_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shadowray_test.dir/tests/shadow_rays_tests.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\GitHub\CGCourse-RT\tests\shadow_rays_tests.cpp -o CMakeFiles\shadowray_test.dir\tests\shadow_rays_tests.cpp.s

# Object files for target shadowray_test
shadowray_test_OBJECTS = \
"CMakeFiles/shadowray_test.dir/tests/shadow_rays_tests.cpp.obj"

# External object files for target shadowray_test
shadowray_test_EXTERNAL_OBJECTS =

shadowray_test.exe: CMakeFiles/shadowray_test.dir/tests/shadow_rays_tests.cpp.obj
shadowray_test.exe: CMakeFiles/shadowray_test.dir/build.make
shadowray_test.exe: libcg.a
shadowray_test.exe: CMakeFiles/shadowray_test.dir/linklibs.rsp
shadowray_test.exe: CMakeFiles/shadowray_test.dir/objects1.rsp
shadowray_test.exe: CMakeFiles/shadowray_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\GitHub\CGCourse-RT\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable shadowray_test.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\shadowray_test.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/shadowray_test.dir/build: shadowray_test.exe

.PHONY : CMakeFiles/shadowray_test.dir/build

CMakeFiles/shadowray_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\shadowray_test.dir\cmake_clean.cmake
.PHONY : CMakeFiles/shadowray_test.dir/clean

CMakeFiles/shadowray_test.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\GitHub\CGCourse-RT D:\GitHub\CGCourse-RT D:\GitHub\CGCourse-RT D:\GitHub\CGCourse-RT D:\GitHub\CGCourse-RT\CMakeFiles\shadowray_test.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/shadowray_test.dir/depend
