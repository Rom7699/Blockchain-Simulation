cmake_minimum_required(VERSION 3.22.1)
project(server C)

set(CMAKE_C_STANDARD 17)

find_package(ZLIB REQUIRED)

add_executable(server.c ../SharedFile/SharedFile.c)

target_link_libraries(server z ${ZLIB_LIBRARIES})



