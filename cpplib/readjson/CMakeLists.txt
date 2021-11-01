aux_source_directory (./bin SRC_LIST)

# 使用${SRC_LIST}为原材料生成一个叫做testFunc_shared 的动态库
add_library (readjson SHARED ${SRC_LIST})
#设置库生成路径
set (LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/cpplib/lib)

target_link_libraries(readjson jsoncpp)