cmake_minimum_required(VERSION 3.0.0)
project(Demo03)

aux_source_directory(. SOURCE_DIR)

add_subdirectory(math)

add_executable(CMakeDemo03 ${SOURCE_DIR})

target_link_libraries(CMakeDemo03 MathFunc) #连接静态库