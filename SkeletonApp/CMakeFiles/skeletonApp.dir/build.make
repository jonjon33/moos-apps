# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jon/YellowSub/apps/02_FullSkelly

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jon/YellowSub/apps/02_FullSkelly

# Include any dependencies generated for this target.
include CMakeFiles/skeletonApp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/skeletonApp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/skeletonApp.dir/flags.make

CMakeFiles/skeletonApp.dir/skeletonApp.cpp.o: CMakeFiles/skeletonApp.dir/flags.make
CMakeFiles/skeletonApp.dir/skeletonApp.cpp.o: skeletonApp.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jon/YellowSub/apps/02_FullSkelly/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/skeletonApp.dir/skeletonApp.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/skeletonApp.dir/skeletonApp.cpp.o -c /home/jon/YellowSub/apps/02_FullSkelly/skeletonApp.cpp

CMakeFiles/skeletonApp.dir/skeletonApp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/skeletonApp.dir/skeletonApp.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jon/YellowSub/apps/02_FullSkelly/skeletonApp.cpp > CMakeFiles/skeletonApp.dir/skeletonApp.cpp.i

CMakeFiles/skeletonApp.dir/skeletonApp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/skeletonApp.dir/skeletonApp.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jon/YellowSub/apps/02_FullSkelly/skeletonApp.cpp -o CMakeFiles/skeletonApp.dir/skeletonApp.cpp.s

CMakeFiles/skeletonApp.dir/skeletonApp.cpp.o.requires:
.PHONY : CMakeFiles/skeletonApp.dir/skeletonApp.cpp.o.requires

CMakeFiles/skeletonApp.dir/skeletonApp.cpp.o.provides: CMakeFiles/skeletonApp.dir/skeletonApp.cpp.o.requires
	$(MAKE) -f CMakeFiles/skeletonApp.dir/build.make CMakeFiles/skeletonApp.dir/skeletonApp.cpp.o.provides.build
.PHONY : CMakeFiles/skeletonApp.dir/skeletonApp.cpp.o.provides

CMakeFiles/skeletonApp.dir/skeletonApp.cpp.o.provides.build: CMakeFiles/skeletonApp.dir/skeletonApp.cpp.o

# Object files for target skeletonApp
skeletonApp_OBJECTS = \
"CMakeFiles/skeletonApp.dir/skeletonApp.cpp.o"

# External object files for target skeletonApp
skeletonApp_EXTERNAL_OBJECTS =

skeletonApp: CMakeFiles/skeletonApp.dir/skeletonApp.cpp.o
skeletonApp: CMakeFiles/skeletonApp.dir/build.make
skeletonApp: /home/jon/YellowSub/moos-ivp/MOOS/MOOSCore/lib/libMOOS.a
skeletonApp: CMakeFiles/skeletonApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable skeletonApp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/skeletonApp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/skeletonApp.dir/build: skeletonApp
.PHONY : CMakeFiles/skeletonApp.dir/build

CMakeFiles/skeletonApp.dir/requires: CMakeFiles/skeletonApp.dir/skeletonApp.cpp.o.requires
.PHONY : CMakeFiles/skeletonApp.dir/requires

CMakeFiles/skeletonApp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/skeletonApp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/skeletonApp.dir/clean

CMakeFiles/skeletonApp.dir/depend:
	cd /home/jon/YellowSub/apps/02_FullSkelly && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jon/YellowSub/apps/02_FullSkelly /home/jon/YellowSub/apps/02_FullSkelly /home/jon/YellowSub/apps/02_FullSkelly /home/jon/YellowSub/apps/02_FullSkelly /home/jon/YellowSub/apps/02_FullSkelly/CMakeFiles/skeletonApp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/skeletonApp.dir/depend

