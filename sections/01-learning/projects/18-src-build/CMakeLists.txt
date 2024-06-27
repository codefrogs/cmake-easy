# cmake-easy

# As before we define a minimum version for cmake
cmake_minimum_required(VERSION 3.20)

# Let's define the project name and the compiler
project(null CXX)

# The name of the executable will be called null.
add_executable(null)

# Here we say the code is held in the foler 'src'.
add_subdirectory(src)

# We then say link into 'null' the code from 'src'.
target_link_libraries(null PRIVATE src_lib)

# Set the standard we want to use
set_property(TARGET null PROPERTY CXX_STANDARD 20 )

# Enforce the C++ standard to use
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Now have a look at src/CMakeLists.txt
