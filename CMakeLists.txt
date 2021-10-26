
add_subdirectory(src)

include_directories(src/include)

add_executable(main main.cpp)

target_link_libraries(main jsoncpp test_shared)