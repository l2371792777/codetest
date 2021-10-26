aux_source_directory (./bin SRC_LIST)

# 使用${SRC_LIST}为原材料生成一个叫做testFunc_shared 的动态库
add_library (test_shared SHARED ${SRC_LIST})

set (LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/src/lib)

target_link_libraries(test_shared jsoncpp)