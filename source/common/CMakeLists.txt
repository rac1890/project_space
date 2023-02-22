set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)

set(LIBCOMMONACP_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/include PARENT_SCOPE)

set(TARGET_NAME
	common
)

include_directories(
	PUBLIC
	include
)

set(SOURCE_FILES
	src/byte_utils.cpp
)

set(HEADER_FILES
	include/byte_utils.hpp
)

add_library(${TARGET_NAME} STATIC
	${SOURCE_FILES}
	${HEADER_FILES}
)

target_include_directories(${TARGET_NAME}
	PUBLIC
	./include
)

#axis_target_link_libraries(${TARGET_NAME}
#	PUBLIC
#)
