CMAKE_MINIMUM_REQUIRED (VERSION 3.6)

set(TARGET_NAME casfr)
project(${TARGET_NAME})

SET(CMAKE_CXX_STANDARD 14)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "$ENV{AXIS_BUILD_BOOTSTRAP_DIR}")
#include(abb)
#init_abb()

# set(CAS_OUTPUT_DIRECTORY C:/Users/hbentefrit/msys64/home/hbentefrit/dev-axis/xxx/_bin)
# set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CAS_OUTPUT_DIRECTORY})
# set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CAS_OUTPUT_DIRECTORY})
# set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CAS_OUTPUT_DIRECTORY})

#axis_process_dependencies()

#if ( ${CMAKE_BUILD_TYPE} STREQUAL "Debug" AND ${ENABLE_COVERAGE} )
#    set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-inline-small-functions -O0")
#
#    APPEND_COVERAGE_COMPILER_FLAGS()
#    set(COVERAGE_EXCLUDES
#        '*/testu/*'
#        '/root/*'
#        '/usr/include/*'
#        '/usr/local/axis/*'
#        '/opt/*'
#        '$ENV{HOME}/.axisk5/*'
#        '$ENV{AXIS_CACHE_DIR}/.axisk5/*'
#        '${CMAKE_BINARY_DIR}/*'
#    )
#    SETUP_TARGET_FOR_COVERAGE(
#        NAME coverage
#        EXECUTABLE bash -c "\""( ${CMAKE_CTEST_COMMAND} -V -T Test || exit 0 )"\"")
#endif()

include(version.cmake)
enable_testing()

add_subdirectory(source)