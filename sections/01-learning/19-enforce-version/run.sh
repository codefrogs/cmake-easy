#!/bin/bash
# Build and run script

# Configure
result=$(cmake -B build -S .)

if [ $? -eq 1 ] ; then
  echo "Generation failed."
  echo "Try it out: "
  echo "  Reduce the CMakeLists.txt VERSION number to enable generation."
  exit 1
fi

# Compile
cmake --build build

# Run
echo
echo "Running 'minimum' executable"
build/minimum 
echo "Finished!"
echo 
echo "Try it out: "
echo "  Increase the CMakeLists.txt VERSION number to test version enforcement."
