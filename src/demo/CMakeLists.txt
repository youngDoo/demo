cmake_minimum_required (VERSION 2.6)

set (CMAKE_VERBOSE_MAKEFILE ON)
set (CMAKE_CXX_FLAGS "$ENV{CXXFLAGS} -rdynamic -o0 -g -std=c++11 -Wall -Wno-unused-function")

file (GLOB SRC_LIST ${PROJECT_SOURCE_DIR}/demo/*.cc)
include_directories (${PROJECT_SOURCE_DIR}/include)

add_library (demo SHARED ${SRC_LIST})
#add_library (demo_static STATIC ${SRC_LIST})
#set_target_properties (demo_static PROPERTIES OUTPUT_NAME "demo")

set (LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)
