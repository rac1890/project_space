cmake_minimum_required(VERSION 3.6)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)

set(TARGET_NAME castel_exe)

include(CTest)
enable_testing()

# configure_file(
# 	../common/include/cas_version.h.in
# 	${CMAKE_CURRENT_BINARY_DIR}/cas_version.h
# ) 

include_directories(
    include
    ../common/include
    ${CMAKE_CURRENT_BINARY_DIR}
)

set(SOURCE_FILES
    src/castel.cpp
)

set(HEADER_FILES
	include/castel.hpp
)

add_executable(${TARGET_NAME}
	${SOURCE_FILES}
	${HEADER_FILES}
)

target_include_directories(${TARGET_NAME}
	PUBLIC
		./include
        ../common/include
        ${CMAKE_CURRENT_BINARY_DIR}
)

#axis_target_link_libraries(${TARGET_NAME}
#	PUBLIC
#        common
#)
