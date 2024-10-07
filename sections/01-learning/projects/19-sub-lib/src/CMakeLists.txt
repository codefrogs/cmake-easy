# src folder
message("Configure src")
add_executable(subex main.cpp)

add_subdirectory(major)
target_include_directories(subex PRIVATE major)

target_link_libraries(subex PRIVATE major)
