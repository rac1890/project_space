set(TARGET_NAME
  cas-test-common
)

set(SOURCE_FILES
  src/byte_utils_test.cpp
)

set(HEADER_FILES
)

add_library(${TARGET_NAME} STATIC
  ${SOURCE_FILES}
  ${HEADER_FILES}
)

target_include_directories(${TARGET_NAME}
  PUBLIC
  inc
)

axis_target_link_libraries(${TARGET_NAME}
  PUBLIC
)
