cmake_minimum_required(VERSION 3.16)
project(unp-learning CXX)

add_library(unp STATIC IMPORTED)
set_target_properties(unp PROPERTIES
    IMPORTED_LOCATION ${CMAKE_SOURCE_DIR}/unpv13e/libunp.a
    INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_SOURCE_DIR}/unpv13e/lib
)

add_subdirectory(chapter-1)