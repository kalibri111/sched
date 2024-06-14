# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest"
  "/tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-build"
  "/tmp/sched/cmake-build-debug-switch/tests/gtest"
  "/tmp/sched/cmake-build-debug-switch/tests/gtest/tmp"
  "/tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-stamp"
  "/tmp/sched/cmake-build-debug-switch/tests/gtest/src"
  "/tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/tmp/sched/cmake-build-debug-switch/tests/gtest/src/gtest-stamp${cfgdir}") # cfgdir has leading slash
endif()
