cmake_minimum_required(VERSION 3.10)

project(playground)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(INCLUDE_DIR ${CMAKE_SOURCE_DIR}/include)

set(SOURCES
  ${CMAKE_SOURCE_DIR}/src/aaa.cc
  ${CMAKE_SOURCE_DIR}/src/bbb.cc
  ${CMAKE_SOURCE_DIR}/src/ccc.cc
)

set(TEST ${CMAKE_SOURCE_DIR}/test/test-abc.cc)

add_executable(test-abc ${SOURCES} ${TEST})

target_include_directories(test-abc PRIVATE ${INCLUDE_DIR})
