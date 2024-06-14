
# Enable ExternalProject CMake module
include(ExternalProject)

# Download and install GoogleTest
ExternalProject_Add(
        gtest
        SOURCE_DIR /home/pprb_dev/googletest-f8d7d77c06936315286eb55f8de22cd23c188571
#        URL https://github.com/google/googletest/archive/f8d7d77c06936315286eb55f8de22cd23c188571.zip
        PREFIX ${CMAKE_CURRENT_BINARY_DIR}/gtest
        # Disable install step
        INSTALL_COMMAND ""
)

# Get GTest source and binary directories from CMake project
ExternalProject_Get_Property(gtest source_dir binary_dir)

# Create a libgtest target to be used as a dependency by test programs
add_library(libgtest IMPORTED STATIC GLOBAL)
add_dependencies(libgtest gtest)

# Set libgtest properties
set_target_properties(libgtest PROPERTIES
        "IMPORTED_LOCATION" "${binary_dir}/lib/libgtest.a"
        "IMPORTED_LINK_INTERFACE_LIBRARIES" "${CMAKE_THREAD_LIBS_INIT}")

include_directories("${source_dir}/googletest/include"
        "${source_dir}/googlemock/include")

#find_package(fmt REQUIRED)

add_executable(sched_test unit.cpp)

target_link_libraries(sched_test libgtest sched)

set_target_properties(sched_test PROPERTIES LINKER_LANGUAGE CXX)

target_compile_options(sched_test PUBLIC -g)

add_test(NAME sched_test COMMAND sched_test)