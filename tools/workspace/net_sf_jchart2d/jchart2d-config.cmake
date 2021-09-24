
# Generated by cps2cmake https://github.com/mwoehlke/pycps
# and then subsequently edited by hand.

if(CMAKE_VERSION VERSION_LESS 3.9.0)
  message(FATAL_ERROR "CMake >= 3.9 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 3.0)
set(CMAKE_IMPORT_FILE_VERSION 1)

include(CMakeFindDependencyMacro)

get_filename_component(${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}" PATH)
get_filename_component(${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}" PATH)
get_filename_component(${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}" PATH)

if(${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX STREQUAL "/")
  set(${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX)
endif()

set(_expectedTargets jchart2d::jide-oss jchart2d::commons-io jchart2d::xmlgraphics-commons jchart2d::jchart2d)

set(_targetsDefined)
set(_targetsNotDefined)

foreach(_expectedTarget ${_expectedTargets})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)

set(jchart2d_VERSION "3.3.2")

add_library(jchart2d::jide-oss STATIC IMPORTED)
set_target_properties(jchart2d::jide-oss PROPERTIES
  IMPORTED_LOCATION "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}/share/java/jide-oss-2.9.7.jar"
  JAR_FILE "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}/share/java/jide-oss-2.9.7.jar"
)

add_library(jchart2d::commons-io STATIC IMPORTED)
set_target_properties(jchart2d::commons-io PROPERTIES
  IMPORTED_LOCATION "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}/share/java/commons-io-1.3.1.jar"
  JAR_FILE "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}/share/java/commons-io-1.3.1.jar"
)

add_library(jchart2d::xmlgraphics-commons STATIC IMPORTED)
set_target_properties(jchart2d::xmlgraphics-commons PROPERTIES
  IMPORTED_LOCATION "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}/share/java/xmlgraphics-commons-1.3.1.jar"
  JAR_FILE "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}/share/java/xmlgraphics-commons-1.3.1.jar"
)

add_library(jchart2d::jchart2d STATIC IMPORTED)
set_target_properties(jchart2d::jchart2d PROPERTIES
  IMPORTED_LOCATION "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}/share/java/jchart2d-3.3.2.jar"
  JAR_FILE "${${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX}/share/java/jchart2d-3.3.2.jar"
)

set(jchart2d_LIBRARIES "jchart2d::jchart2d")
set(jchart2d_INCLUDE_DIRS "")


unset(${CMAKE_FIND_PACKAGE_NAME}_IMPORT_PREFIX)
unset(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
