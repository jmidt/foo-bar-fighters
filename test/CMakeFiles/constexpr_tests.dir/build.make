# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /opt/cmake/cmake-3.17.2-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /opt/cmake/cmake-3.17.2-Linux-x86_64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jonatan/Documents/Dev/foo-bar-fighters

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jonatan/Documents/Dev/foo-bar-fighters

# Include any dependencies generated for this target.
include test/CMakeFiles/constexpr_tests.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/constexpr_tests.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/constexpr_tests.dir/flags.make

test/CMakeFiles/constexpr_tests.dir/constexpr_tests.cpp.o: test/CMakeFiles/constexpr_tests.dir/flags.make
test/CMakeFiles/constexpr_tests.dir/constexpr_tests.cpp.o: test/constexpr_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonatan/Documents/Dev/foo-bar-fighters/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/constexpr_tests.dir/constexpr_tests.cpp.o"
	cd /home/jonatan/Documents/Dev/foo-bar-fighters/test && $(CMAKE_COMMAND) -E __run_co_compile --launcher=/usr/bin/ccache --tidy="/usr/bin/clang-tidy;-extra-arg=-Wno-unknown-warning-option;--extra-arg-before=--driver-mode=g++" --cppcheck="/usr/bin/cppcheck;--suppress=missingInclude;--enable=all;--inconclusive;-i;/home/jonatan/Documents/Dev/foo-bar-fighters/imgui/lib" --source=/home/jonatan/Documents/Dev/foo-bar-fighters/test/constexpr_tests.cpp -- /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/constexpr_tests.dir/constexpr_tests.cpp.o -c /home/jonatan/Documents/Dev/foo-bar-fighters/test/constexpr_tests.cpp

test/CMakeFiles/constexpr_tests.dir/constexpr_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/constexpr_tests.dir/constexpr_tests.cpp.i"
	cd /home/jonatan/Documents/Dev/foo-bar-fighters/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonatan/Documents/Dev/foo-bar-fighters/test/constexpr_tests.cpp > CMakeFiles/constexpr_tests.dir/constexpr_tests.cpp.i

test/CMakeFiles/constexpr_tests.dir/constexpr_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/constexpr_tests.dir/constexpr_tests.cpp.s"
	cd /home/jonatan/Documents/Dev/foo-bar-fighters/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonatan/Documents/Dev/foo-bar-fighters/test/constexpr_tests.cpp -o CMakeFiles/constexpr_tests.dir/constexpr_tests.cpp.s

# Object files for target constexpr_tests
constexpr_tests_OBJECTS = \
"CMakeFiles/constexpr_tests.dir/constexpr_tests.cpp.o"

# External object files for target constexpr_tests
constexpr_tests_EXTERNAL_OBJECTS =

bin/constexpr_tests: test/CMakeFiles/constexpr_tests.dir/constexpr_tests.cpp.o
bin/constexpr_tests: test/CMakeFiles/constexpr_tests.dir/build.make
bin/constexpr_tests: lib/libcatch_main.a
bin/constexpr_tests: test/CMakeFiles/constexpr_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jonatan/Documents/Dev/foo-bar-fighters/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/constexpr_tests"
	cd /home/jonatan/Documents/Dev/foo-bar-fighters/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/constexpr_tests.dir/link.txt --verbose=$(VERBOSE)
	cd /home/jonatan/Documents/Dev/foo-bar-fighters/test && /opt/cmake/cmake-3.17.2-Linux-x86_64/bin/cmake -D TEST_TARGET=constexpr_tests -D TEST_EXECUTABLE=/home/jonatan/Documents/Dev/foo-bar-fighters/bin/constexpr_tests -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/jonatan/Documents/Dev/foo-bar-fighters/test -D TEST_SPEC= -D "TEST_EXTRA_ARGS=-s;--reporter=xml;--out=constexpr.xml" -D TEST_PROPERTIES= -D TEST_PREFIX=constexpr. -D TEST_SUFFIX= -D TEST_LIST=constexpr_tests_TESTS -D CTEST_FILE=/home/jonatan/Documents/Dev/foo-bar-fighters/test/constexpr_tests_tests-c8884dd.cmake -P /home/jonatan/.conan/data/catch2/2.11.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib/cmake/Catch2/CatchAddTests.cmake

# Rule to build all files generated by this target.
test/CMakeFiles/constexpr_tests.dir/build: bin/constexpr_tests

.PHONY : test/CMakeFiles/constexpr_tests.dir/build

test/CMakeFiles/constexpr_tests.dir/clean:
	cd /home/jonatan/Documents/Dev/foo-bar-fighters/test && $(CMAKE_COMMAND) -P CMakeFiles/constexpr_tests.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/constexpr_tests.dir/clean

test/CMakeFiles/constexpr_tests.dir/depend:
	cd /home/jonatan/Documents/Dev/foo-bar-fighters && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jonatan/Documents/Dev/foo-bar-fighters /home/jonatan/Documents/Dev/foo-bar-fighters/test /home/jonatan/Documents/Dev/foo-bar-fighters /home/jonatan/Documents/Dev/foo-bar-fighters/test /home/jonatan/Documents/Dev/foo-bar-fighters/test/CMakeFiles/constexpr_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/constexpr_tests.dir/depend

