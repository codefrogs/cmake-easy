# major library
message("Configure major library")

add_library(major major.cpp)
target_include_directories(major PUBLIC minor)

add_subdirectory(minor)

target_link_libraries(major PRIVATE minor)

