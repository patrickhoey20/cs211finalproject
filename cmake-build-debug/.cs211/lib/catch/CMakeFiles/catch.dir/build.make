# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug"

# Include any dependencies generated for this target.
include .cs211/lib/catch/CMakeFiles/catch.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include .cs211/lib/catch/CMakeFiles/catch.dir/compiler_depend.make

# Include the progress variables for this target.
include .cs211/lib/catch/CMakeFiles/catch.dir/progress.make

# Include the compile flags for this target's objects.
include .cs211/lib/catch/CMakeFiles/catch.dir/flags.make

.cs211/lib/catch/CMakeFiles/catch.dir/src/catch.cxx.o: .cs211/lib/catch/CMakeFiles/catch.dir/flags.make
.cs211/lib/catch/CMakeFiles/catch.dir/src/catch.cxx.o: ../.cs211/lib/catch/src/catch.cxx
.cs211/lib/catch/CMakeFiles/catch.dir/src/catch.cxx.o: .cs211/lib/catch/CMakeFiles/catch.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object .cs211/lib/catch/CMakeFiles/catch.dir/src/catch.cxx.o"
	cd "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/.cs211/lib/catch" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT .cs211/lib/catch/CMakeFiles/catch.dir/src/catch.cxx.o -MF CMakeFiles/catch.dir/src/catch.cxx.o.d -o CMakeFiles/catch.dir/src/catch.cxx.o -c "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/.cs211/lib/catch/src/catch.cxx"

.cs211/lib/catch/CMakeFiles/catch.dir/src/catch.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/catch.dir/src/catch.cxx.i"
	cd "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/.cs211/lib/catch" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/.cs211/lib/catch/src/catch.cxx" > CMakeFiles/catch.dir/src/catch.cxx.i

.cs211/lib/catch/CMakeFiles/catch.dir/src/catch.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/catch.dir/src/catch.cxx.s"
	cd "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/.cs211/lib/catch" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/.cs211/lib/catch/src/catch.cxx" -o CMakeFiles/catch.dir/src/catch.cxx.s

# Object files for target catch
catch_OBJECTS = \
"CMakeFiles/catch.dir/src/catch.cxx.o"

# External object files for target catch
catch_EXTERNAL_OBJECTS =

.cs211/lib/catch/libcatch.a: .cs211/lib/catch/CMakeFiles/catch.dir/src/catch.cxx.o
.cs211/lib/catch/libcatch.a: .cs211/lib/catch/CMakeFiles/catch.dir/build.make
.cs211/lib/catch/libcatch.a: .cs211/lib/catch/CMakeFiles/catch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libcatch.a"
	cd "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/.cs211/lib/catch" && $(CMAKE_COMMAND) -P CMakeFiles/catch.dir/cmake_clean_target.cmake
	cd "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/.cs211/lib/catch" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/catch.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
.cs211/lib/catch/CMakeFiles/catch.dir/build: .cs211/lib/catch/libcatch.a
.PHONY : .cs211/lib/catch/CMakeFiles/catch.dir/build

.cs211/lib/catch/CMakeFiles/catch.dir/clean:
	cd "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/.cs211/lib/catch" && $(CMAKE_COMMAND) -P CMakeFiles/catch.dir/cmake_clean.cmake
.PHONY : .cs211/lib/catch/CMakeFiles/catch.dir/clean

.cs211/lib/catch/CMakeFiles/catch.dir/depend:
	cd "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy" "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/.cs211/lib/catch" "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug" "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/.cs211/lib/catch" "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/.cs211/lib/catch/CMakeFiles/catch.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : .cs211/lib/catch/CMakeFiles/catch.dir/depend

