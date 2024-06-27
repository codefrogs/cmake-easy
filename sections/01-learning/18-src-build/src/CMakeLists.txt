# We say that we want to collect all the object files
add_library( src_lib OBJECT nullable.cpp main.cpp)

# Declare the include directory for the target 'src'
target_include_directories(src_lib PUBLIC .)
