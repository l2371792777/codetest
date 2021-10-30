#添加子目录路径
add_subdirectory(src)
#添加头文件目录
include_directories(src/readjson/include)

add_executable(createleetcode main.cpp)

target_link_libraries(createleetcode readjson)