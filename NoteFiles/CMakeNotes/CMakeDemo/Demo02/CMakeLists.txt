cmake_minimum_required(VERSION 3.0.0)
project(CMakeDemo02)

 # 为了方便，可以将当前目录下(参数一：.)所有的源文件保存在变量中(参数二，可任取)
aux_source_directory(. DIR_SOURCE) 
add_executable(CMakeDemo02 ${DIR_SOURCE})   # 添加所有的源文件