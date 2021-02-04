cmake_minimum_required (VERSION 2.6)

set (CMAKE_VERBOSE_MAKEFILE ON)
set (CMAKE_CXX_FLAGS "$ENV{CXXFLAGS} -rdynamic -o0 -g -std=c++11 -Wall -Wno-unused-function")

file (GLOB SRC_LIST ${PROJECT_SOURCE_DIR}/utils/*.cc)
include_directories (${PROJECT_SOURCE_DIR}/include/)
#message(">>> PROJECT_SOURCE_DIR=${PROJECT_SOURCE_DIR}")
add_library (utils SHARED ${SRC_LIST})
#add_library (utils_static STATIC ${SRC_LIST})
#set_target_properties (utils_static PROPERTIES OUTPUT_NAME "utils")

set (LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)
