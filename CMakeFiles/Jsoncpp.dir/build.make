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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ayanami/source/code/codetest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ayanami/source/code/codetest

# Include any dependencies generated for this target.
include CMakeFiles/Jsoncpp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Jsoncpp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Jsoncpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Jsoncpp.dir/flags.make

CMakeFiles/Jsoncpp.dir/src/include/json_reader.o: CMakeFiles/Jsoncpp.dir/flags.make
CMakeFiles/Jsoncpp.dir/src/include/json_reader.o: src/include/json_reader.cpp
CMakeFiles/Jsoncpp.dir/src/include/json_reader.o: CMakeFiles/Jsoncpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ayanami/source/code/codetest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Jsoncpp.dir/src/include/json_reader.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Jsoncpp.dir/src/include/json_reader.o -MF CMakeFiles/Jsoncpp.dir/src/include/json_reader.o.d -o CMakeFiles/Jsoncpp.dir/src/include/json_reader.o -c /home/ayanami/source/code/codetest/src/include/json_reader.cpp

CMakeFiles/Jsoncpp.dir/src/include/json_reader.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Jsoncpp.dir/src/include/json_reader.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ayanami/source/code/codetest/src/include/json_reader.cpp > CMakeFiles/Jsoncpp.dir/src/include/json_reader.i

CMakeFiles/Jsoncpp.dir/src/include/json_reader.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Jsoncpp.dir/src/include/json_reader.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ayanami/source/code/codetest/src/include/json_reader.cpp -o CMakeFiles/Jsoncpp.dir/src/include/json_reader.s

CMakeFiles/Jsoncpp.dir/src/include/json_value.o: CMakeFiles/Jsoncpp.dir/flags.make
CMakeFiles/Jsoncpp.dir/src/include/json_value.o: src/include/json_value.cpp
CMakeFiles/Jsoncpp.dir/src/include/json_value.o: CMakeFiles/Jsoncpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ayanami/source/code/codetest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Jsoncpp.dir/src/include/json_value.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Jsoncpp.dir/src/include/json_value.o -MF CMakeFiles/Jsoncpp.dir/src/include/json_value.o.d -o CMakeFiles/Jsoncpp.dir/src/include/json_value.o -c /home/ayanami/source/code/codetest/src/include/json_value.cpp

CMakeFiles/Jsoncpp.dir/src/include/json_value.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Jsoncpp.dir/src/include/json_value.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ayanami/source/code/codetest/src/include/json_value.cpp > CMakeFiles/Jsoncpp.dir/src/include/json_value.i

CMakeFiles/Jsoncpp.dir/src/include/json_value.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Jsoncpp.dir/src/include/json_value.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ayanami/source/code/codetest/src/include/json_value.cpp -o CMakeFiles/Jsoncpp.dir/src/include/json_value.s

CMakeFiles/Jsoncpp.dir/src/include/json_writer.o: CMakeFiles/Jsoncpp.dir/flags.make
CMakeFiles/Jsoncpp.dir/src/include/json_writer.o: src/include/json_writer.cpp
CMakeFiles/Jsoncpp.dir/src/include/json_writer.o: CMakeFiles/Jsoncpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ayanami/source/code/codetest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Jsoncpp.dir/src/include/json_writer.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Jsoncpp.dir/src/include/json_writer.o -MF CMakeFiles/Jsoncpp.dir/src/include/json_writer.o.d -o CMakeFiles/Jsoncpp.dir/src/include/json_writer.o -c /home/ayanami/source/code/codetest/src/include/json_writer.cpp

CMakeFiles/Jsoncpp.dir/src/include/json_writer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Jsoncpp.dir/src/include/json_writer.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ayanami/source/code/codetest/src/include/json_writer.cpp > CMakeFiles/Jsoncpp.dir/src/include/json_writer.i

CMakeFiles/Jsoncpp.dir/src/include/json_writer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Jsoncpp.dir/src/include/json_writer.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ayanami/source/code/codetest/src/include/json_writer.cpp -o CMakeFiles/Jsoncpp.dir/src/include/json_writer.s

# Object files for target Jsoncpp
Jsoncpp_OBJECTS = \
"CMakeFiles/Jsoncpp.dir/src/include/json_reader.o" \
"CMakeFiles/Jsoncpp.dir/src/include/json_value.o" \
"CMakeFiles/Jsoncpp.dir/src/include/json_writer.o"

# External object files for target Jsoncpp
Jsoncpp_EXTERNAL_OBJECTS =

libJsoncpp.so: CMakeFiles/Jsoncpp.dir/src/include/json_reader.o
libJsoncpp.so: CMakeFiles/Jsoncpp.dir/src/include/json_value.o
libJsoncpp.so: CMakeFiles/Jsoncpp.dir/src/include/json_writer.o
libJsoncpp.so: CMakeFiles/Jsoncpp.dir/build.make
libJsoncpp.so: CMakeFiles/Jsoncpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ayanami/source/code/codetest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library libJsoncpp.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Jsoncpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Jsoncpp.dir/build: libJsoncpp.so
.PHONY : CMakeFiles/Jsoncpp.dir/build

CMakeFiles/Jsoncpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Jsoncpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Jsoncpp.dir/clean

CMakeFiles/Jsoncpp.dir/depend:
	cd /home/ayanami/source/code/codetest && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ayanami/source/code/codetest /home/ayanami/source/code/codetest /home/ayanami/source/code/codetest /home/ayanami/source/code/codetest /home/ayanami/source/code/codetest/CMakeFiles/Jsoncpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Jsoncpp.dir/depend
