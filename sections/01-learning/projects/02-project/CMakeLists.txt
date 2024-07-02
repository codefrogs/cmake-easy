# Minimum build
# Run: cmake -B build -S .

cmake_minimum_required(VERSION 3.20) # Should come before 'project'
project(Minimal LANGUAGES CXX 
	        VERSION 1 
	        DESCRIPTION "Minimal project"
		HOMEPAGE_URL www.myhomepage.co.uk
		)
# We can now use a few variables during our configuration/generation:
message("1. Version: ${Minimal_VERSION}")
message("2. Project: ${CMAKE_PROJECT_NAME}")
