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
include CMakeFiles/chutes_and_ladders.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/chutes_and_ladders.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/chutes_and_ladders.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/chutes_and_ladders.dir/flags.make

CMakeFiles/chutes_and_ladders.dir/src/model.cxx.o: CMakeFiles/chutes_and_ladders.dir/flags.make
CMakeFiles/chutes_and_ladders.dir/src/model.cxx.o: ../src/model.cxx
CMakeFiles/chutes_and_ladders.dir/src/model.cxx.o: CMakeFiles/chutes_and_ladders.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/chutes_and_ladders.dir/src/model.cxx.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/chutes_and_ladders.dir/src/model.cxx.o -MF CMakeFiles/chutes_and_ladders.dir/src/model.cxx.o.d -o CMakeFiles/chutes_and_ladders.dir/src/model.cxx.o -c "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/model.cxx"

CMakeFiles/chutes_and_ladders.dir/src/model.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chutes_and_ladders.dir/src/model.cxx.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/model.cxx" > CMakeFiles/chutes_and_ladders.dir/src/model.cxx.i

CMakeFiles/chutes_and_ladders.dir/src/model.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chutes_and_ladders.dir/src/model.cxx.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/model.cxx" -o CMakeFiles/chutes_and_ladders.dir/src/model.cxx.s

CMakeFiles/chutes_and_ladders.dir/src/board.cxx.o: CMakeFiles/chutes_and_ladders.dir/flags.make
CMakeFiles/chutes_and_ladders.dir/src/board.cxx.o: ../src/board.cxx
CMakeFiles/chutes_and_ladders.dir/src/board.cxx.o: CMakeFiles/chutes_and_ladders.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/chutes_and_ladders.dir/src/board.cxx.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/chutes_and_ladders.dir/src/board.cxx.o -MF CMakeFiles/chutes_and_ladders.dir/src/board.cxx.o.d -o CMakeFiles/chutes_and_ladders.dir/src/board.cxx.o -c "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/board.cxx"

CMakeFiles/chutes_and_ladders.dir/src/board.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chutes_and_ladders.dir/src/board.cxx.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/board.cxx" > CMakeFiles/chutes_and_ladders.dir/src/board.cxx.i

CMakeFiles/chutes_and_ladders.dir/src/board.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chutes_and_ladders.dir/src/board.cxx.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/board.cxx" -o CMakeFiles/chutes_and_ladders.dir/src/board.cxx.s

CMakeFiles/chutes_and_ladders.dir/src/player.cxx.o: CMakeFiles/chutes_and_ladders.dir/flags.make
CMakeFiles/chutes_and_ladders.dir/src/player.cxx.o: ../src/player.cxx
CMakeFiles/chutes_and_ladders.dir/src/player.cxx.o: CMakeFiles/chutes_and_ladders.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/chutes_and_ladders.dir/src/player.cxx.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/chutes_and_ladders.dir/src/player.cxx.o -MF CMakeFiles/chutes_and_ladders.dir/src/player.cxx.o.d -o CMakeFiles/chutes_and_ladders.dir/src/player.cxx.o -c "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/player.cxx"

CMakeFiles/chutes_and_ladders.dir/src/player.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chutes_and_ladders.dir/src/player.cxx.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/player.cxx" > CMakeFiles/chutes_and_ladders.dir/src/player.cxx.i

CMakeFiles/chutes_and_ladders.dir/src/player.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chutes_and_ladders.dir/src/player.cxx.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/player.cxx" -o CMakeFiles/chutes_and_ladders.dir/src/player.cxx.s

CMakeFiles/chutes_and_ladders.dir/src/view.cxx.o: CMakeFiles/chutes_and_ladders.dir/flags.make
CMakeFiles/chutes_and_ladders.dir/src/view.cxx.o: ../src/view.cxx
CMakeFiles/chutes_and_ladders.dir/src/view.cxx.o: CMakeFiles/chutes_and_ladders.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/chutes_and_ladders.dir/src/view.cxx.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/chutes_and_ladders.dir/src/view.cxx.o -MF CMakeFiles/chutes_and_ladders.dir/src/view.cxx.o.d -o CMakeFiles/chutes_and_ladders.dir/src/view.cxx.o -c "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/view.cxx"

CMakeFiles/chutes_and_ladders.dir/src/view.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chutes_and_ladders.dir/src/view.cxx.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/view.cxx" > CMakeFiles/chutes_and_ladders.dir/src/view.cxx.i

CMakeFiles/chutes_and_ladders.dir/src/view.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chutes_and_ladders.dir/src/view.cxx.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/view.cxx" -o CMakeFiles/chutes_and_ladders.dir/src/view.cxx.s

CMakeFiles/chutes_and_ladders.dir/src/controller.cxx.o: CMakeFiles/chutes_and_ladders.dir/flags.make
CMakeFiles/chutes_and_ladders.dir/src/controller.cxx.o: ../src/controller.cxx
CMakeFiles/chutes_and_ladders.dir/src/controller.cxx.o: CMakeFiles/chutes_and_ladders.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/chutes_and_ladders.dir/src/controller.cxx.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/chutes_and_ladders.dir/src/controller.cxx.o -MF CMakeFiles/chutes_and_ladders.dir/src/controller.cxx.o.d -o CMakeFiles/chutes_and_ladders.dir/src/controller.cxx.o -c "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/controller.cxx"

CMakeFiles/chutes_and_ladders.dir/src/controller.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chutes_and_ladders.dir/src/controller.cxx.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/controller.cxx" > CMakeFiles/chutes_and_ladders.dir/src/controller.cxx.i

CMakeFiles/chutes_and_ladders.dir/src/controller.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chutes_and_ladders.dir/src/controller.cxx.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/controller.cxx" -o CMakeFiles/chutes_and_ladders.dir/src/controller.cxx.s

CMakeFiles/chutes_and_ladders.dir/src/main.cxx.o: CMakeFiles/chutes_and_ladders.dir/flags.make
CMakeFiles/chutes_and_ladders.dir/src/main.cxx.o: ../src/main.cxx
CMakeFiles/chutes_and_ladders.dir/src/main.cxx.o: CMakeFiles/chutes_and_ladders.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/chutes_and_ladders.dir/src/main.cxx.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/chutes_and_ladders.dir/src/main.cxx.o -MF CMakeFiles/chutes_and_ladders.dir/src/main.cxx.o.d -o CMakeFiles/chutes_and_ladders.dir/src/main.cxx.o -c "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/main.cxx"

CMakeFiles/chutes_and_ladders.dir/src/main.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chutes_and_ladders.dir/src/main.cxx.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/main.cxx" > CMakeFiles/chutes_and_ladders.dir/src/main.cxx.i

CMakeFiles/chutes_and_ladders.dir/src/main.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chutes_and_ladders.dir/src/main.cxx.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/src/main.cxx" -o CMakeFiles/chutes_and_ladders.dir/src/main.cxx.s

# Object files for target chutes_and_ladders
chutes_and_ladders_OBJECTS = \
"CMakeFiles/chutes_and_ladders.dir/src/model.cxx.o" \
"CMakeFiles/chutes_and_ladders.dir/src/board.cxx.o" \
"CMakeFiles/chutes_and_ladders.dir/src/player.cxx.o" \
"CMakeFiles/chutes_and_ladders.dir/src/view.cxx.o" \
"CMakeFiles/chutes_and_ladders.dir/src/controller.cxx.o" \
"CMakeFiles/chutes_and_ladders.dir/src/main.cxx.o"

# External object files for target chutes_and_ladders
chutes_and_ladders_EXTERNAL_OBJECTS =

chutes_and_ladders: CMakeFiles/chutes_and_ladders.dir/src/model.cxx.o
chutes_and_ladders: CMakeFiles/chutes_and_ladders.dir/src/board.cxx.o
chutes_and_ladders: CMakeFiles/chutes_and_ladders.dir/src/player.cxx.o
chutes_and_ladders: CMakeFiles/chutes_and_ladders.dir/src/view.cxx.o
chutes_and_ladders: CMakeFiles/chutes_and_ladders.dir/src/controller.cxx.o
chutes_and_ladders: CMakeFiles/chutes_and_ladders.dir/src/main.cxx.o
chutes_and_ladders: CMakeFiles/chutes_and_ladders.dir/build.make
chutes_and_ladders: .cs211/lib/ge211/src/libge211.a
chutes_and_ladders: /usr/local/lib/libSDL2.dylib
chutes_and_ladders: /usr/local/lib/libSDL2_image.dylib
chutes_and_ladders: /usr/local/lib/libSDL2_mixer.dylib
chutes_and_ladders: /usr/local/lib/libSDL2_ttf.dylib
chutes_and_ladders: CMakeFiles/chutes_and_ladders.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable chutes_and_ladders"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chutes_and_ladders.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/chutes_and_ladders.dir/build: chutes_and_ladders
.PHONY : CMakeFiles/chutes_and_ladders.dir/build

CMakeFiles/chutes_and_ladders.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/chutes_and_ladders.dir/cmake_clean.cmake
.PHONY : CMakeFiles/chutes_and_ladders.dir/clean

CMakeFiles/chutes_and_ladders.dir/depend:
	cd "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy" "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy" "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug" "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug" "/Users/patrickhoey/Desktop/CS211 FINAL PROJECT copy/cmake-build-debug/CMakeFiles/chutes_and_ladders.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/chutes_and_ladders.dir/depend
