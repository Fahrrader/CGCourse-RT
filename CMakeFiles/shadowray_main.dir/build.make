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
include CMakeFiles/shadowray_main.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/shadowray_main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/shadowray_main.dir/flags.make

CMakeFiles/shadowray_main.dir/src/shadow_rays_main.cpp.obj: CMakeFiles/shadowray_main.dir/flags.make
CMakeFiles/shadowray_main.dir/src/shadow_rays_main.cpp.obj: CMakeFiles/shadowray_main.dir/includes_CXX.rsp
CMakeFiles/shadowray_main.dir/src/shadow_rays_main.cpp.obj: src/shadow_rays_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\GitHub\CGCourse-RT\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/shadowray_main.dir/src/shadow_rays_main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\shadowray_main.dir\src\shadow_rays_main.cpp.obj -c D:\GitHub\CGCourse-RT\src\shadow_rays_main.cpp

CMakeFiles/shadowray_main.dir/src/shadow_rays_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shadowray_main.dir/src/shadow_rays_main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\GitHub\CGCourse-RT\src\shadow_rays_main.cpp > CMakeFiles\shadowray_main.dir\src\shadow_rays_main.cpp.i

CMakeFiles/shadowray_main.dir/src/shadow_rays_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shadowray_main.dir/src/shadow_rays_main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\GitHub\CGCourse-RT\src\shadow_rays_main.cpp -o CMakeFiles\shadowray_main.dir\src\shadow_rays_main.cpp.s

# Object files for target shadowray_main
shadowray_main_OBJECTS = \
"CMakeFiles/shadowray_main.dir/src/shadow_rays_main.cpp.obj"

# External object files for target shadowray_main
shadowray_main_EXTERNAL_OBJECTS =

shadowray_main.exe: CMakeFiles/shadowray_main.dir/src/shadow_rays_main.cpp.obj
shadowray_main.exe: CMakeFiles/shadowray_main.dir/build.make
shadowray_main.exe: libcg.a
shadowray_main.exe: CMakeFiles/shadowray_main.dir/linklibs.rsp
shadowray_main.exe: CMakeFiles/shadowray_main.dir/objects1.rsp
shadowray_main.exe: CMakeFiles/shadowray_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\GitHub\CGCourse-RT\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable shadowray_main.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\shadowray_main.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/shadowray_main.dir/build: shadowray_main.exe

.PHONY : CMakeFiles/shadowray_main.dir/build

CMakeFiles/shadowray_main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\shadowray_main.dir\cmake_clean.cmake
.PHONY : CMakeFiles/shadowray_main.dir/clean

CMakeFiles/shadowray_main.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\GitHub\CGCourse-RT D:\GitHub\CGCourse-RT D:\GitHub\CGCourse-RT D:\GitHub\CGCourse-RT D:\GitHub\CGCourse-RT\CMakeFiles\shadowray_main.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/shadowray_main.dir/depend

