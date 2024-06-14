# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/ivanleskin/Desktop/MIPT/diploma/sched/build/tests/gtest/src/gtest"
  "/Users/ivanleskin/Desktop/MIPT/diploma/sched/build/tests/gtest/src/gtest-build"
  "/Users/ivanleskin/Desktop/MIPT/diploma/sched/build/tests/gtest"
  "/Users/ivanleskin/Desktop/MIPT/diploma/sched/build/tests/gtest/tmp"
  "/Users/ivanleskin/Desktop/MIPT/diploma/sched/build/tests/gtest/src/gtest-stamp"
  "/Users/ivanleskin/Desktop/MIPT/diploma/sched/build/tests/gtest/src"
  "/Users/ivanleskin/Desktop/MIPT/diploma/sched/build/tests/gtest/src/gtest-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/ivanleskin/Desktop/MIPT/diploma/sched/build/tests/gtest/src/gtest-stamp/${subDir}")
endforeach()
