cmake_minimum_required (VERSION 2.6)

set (CMAKE_VERBOSE_MAKEFILE ON)
set (CMAKE_CXX_FLAGS "$ENV{CXXFLAGS} -rdynamic -o0 -g -std=c++11 -Wall -Wno-unused-function")

include_directories (${PROJECT_SOURCE_DIR}/include)
add_executable (testdemo test.cc)
add_dependencies (testdemo demo)
target_link_libraries (testdemo demo)

set (EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/../bin)
