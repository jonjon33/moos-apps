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
CMAKE_SOURCE_DIR = /home/jon/YellowSub/apps/03_PostingPractice

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jon/YellowSub/apps/03_PostingPractice

# Include any dependencies generated for this target.
include CMakeFiles/postingApp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/postingApp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/postingApp.dir/flags.make

CMakeFiles/postingApp.dir/postingApp.cpp.o: CMakeFiles/postingApp.dir/flags.make
CMakeFiles/postingApp.dir/postingApp.cpp.o: postingApp.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jon/YellowSub/apps/03_PostingPractice/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/postingApp.dir/postingApp.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/postingApp.dir/postingApp.cpp.o -c /home/jon/YellowSub/apps/03_PostingPractice/postingApp.cpp

CMakeFiles/postingApp.dir/postingApp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/postingApp.dir/postingApp.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jon/YellowSub/apps/03_PostingPractice/postingApp.cpp > CMakeFiles/postingApp.dir/postingApp.cpp.i

CMakeFiles/postingApp.dir/postingApp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/postingApp.dir/postingApp.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jon/YellowSub/apps/03_PostingPractice/postingApp.cpp -o CMakeFiles/postingApp.dir/postingApp.cpp.s

CMakeFiles/postingApp.dir/postingApp.cpp.o.requires:
.PHONY : CMakeFiles/postingApp.dir/postingApp.cpp.o.requires

CMakeFiles/postingApp.dir/postingApp.cpp.o.provides: CMakeFiles/postingApp.dir/postingApp.cpp.o.requires
	$(MAKE) -f CMakeFiles/postingApp.dir/build.make CMakeFiles/postingApp.dir/postingApp.cpp.o.provides.build
.PHONY : CMakeFiles/postingApp.dir/postingApp.cpp.o.provides

CMakeFiles/postingApp.dir/postingApp.cpp.o.provides.build: CMakeFiles/postingApp.dir/postingApp.cpp.o

# Object files for target postingApp
postingApp_OBJECTS = \
"CMakeFiles/postingApp.dir/postingApp.cpp.o"

# External object files for target postingApp
postingApp_EXTERNAL_OBJECTS =

postingApp: CMakeFiles/postingApp.dir/postingApp.cpp.o
postingApp: CMakeFiles/postingApp.dir/build.make
postingApp: /home/jon/YellowSub/moos-ivp/MOOS/MOOSCore/lib/libMOOS.a
postingApp: CMakeFiles/postingApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable postingApp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/postingApp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/postingApp.dir/build: postingApp
.PHONY : CMakeFiles/postingApp.dir/build

CMakeFiles/postingApp.dir/requires: CMakeFiles/postingApp.dir/postingApp.cpp.o.requires
.PHONY : CMakeFiles/postingApp.dir/requires

CMakeFiles/postingApp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/postingApp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/postingApp.dir/clean

CMakeFiles/postingApp.dir/depend:
	cd /home/jon/YellowSub/apps/03_PostingPractice && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jon/YellowSub/apps/03_PostingPractice /home/jon/YellowSub/apps/03_PostingPractice /home/jon/YellowSub/apps/03_PostingPractice /home/jon/YellowSub/apps/03_PostingPractice /home/jon/YellowSub/apps/03_PostingPractice/CMakeFiles/postingApp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/postingApp.dir/depend

