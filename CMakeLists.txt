#添加子目录路径
add_subdirectory(cpplib)
#添加头文件目录
include_directories(cpplib/readjson/include)

add_executable(main main.cpp)

target_link_libraries(main readjson)