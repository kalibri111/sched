cmake_minimum_required(VERSION 3.20)
project(sched)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 23)

SET (CMAKE_ENABLE_EXPORTS TRUE)

add_subdirectory(src)

add_link_options("-v")
enable_testing()
add_subdirectory(tests)