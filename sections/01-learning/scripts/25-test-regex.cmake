# cmake-easy by Codefrogs
# Regular expressions are very useful, but can be confusing.
# In our scripts we often use character classes such as [[:alpha:]] for example.
# To play with regular expressions, also known as regex, try out
# this website: https://regex101.com
#
cmake_minimum_required(VERSION 3.29)
message( "cmake-easy by Codefrogs")
message( "Comparisons with regular expressions.")
message( "")

if ( "ONE" MATCHES "ONE" )
  message("1. Simple match")
endif()

if ( "ONE" MATCHES "^[A-Z][A-Z][A-Z]$" )
  message("2. Three character match")
endif()

# Sadly no [A-Z]{3} supported!
if ( "ONES" MATCHES "^[A-Z][A-Z][A-Z]$" )
  message("X. Three character match")
else()
  message("3. Bad match")
endif()

if ( "ONE" MATCHES "O.*" )
  message("3. ONE matches O.*")
endif()

if ( "ONE-TWO" MATCHES "^[A-Z]+-[A-Z]+" )
  message("4. ONE-TWO matches regex")
endif()

if ( "one-TWO" MATCHES "^[A-Z]+-[A-Z]+" )
  message("X. ONE-TWO matches regex")
else()
  message("5. No match")
endif()

# Checking string ends with a digit
set(val "hume-chp-12" )

# Using regular expression with anchor character '$'
# This requires the text to end with only a number.
if ( ${val} MATCHES "^hume-chp-[0-9]+$" ) 
  message( "6. Found a chapter." )
else()
  message( "X. Unknown book: ${val}" )
endif()
 
#Checking file ending.
set( val "filename.txt" )
# This requires the text to end with only a number.
if ( ${val} MATCHES ".+\.txt$" )
  message( "7. Found text file: ${val}" )
else()
  message( "X: Unknown filetype: ${val}" )
endif()

# Checking file prefix.
set( val "data-colour.txt" )
if ( ${val} MATCHES "^data-" )
  message( "8. Found data file: ${val}" )
  message( "   CMAKE_MATCH_0 = ${CMAKE_MATCH_0}")
  message( "   CMAKE_MATCH_1 = ${CMAKE_MATCH_1}")
else()
  message( "X. Unknown prefix: ${val}" )
endif()

# Check for numbered filename with hypen.
#
set( index_filename "20-regexp.cmake" )
if ( ${index_filename} MATCHES "^[0-9]+-.*" )
  message( "9. Found indexed file." )
  message( "   CMAKE_MATCH_0 = ${CMAKE_MATCH_0}")
  message( "   CMAKE_MATCH_1 = ${CMAKE_MATCH_1}") # Not populated :(
else()
  message( "X. Not indexed file!: ${index_filename}" )
endif()

# Trying again: Added a group to populated indexed matches.
if ( ${index_filename} MATCHES "^([0-9]+)-.*" )
  message( "10. Found indexed file." )
  message( "    CMAKE_MATCH_0 = ${CMAKE_MATCH_0}")
  message( "    CMAKE_MATCH_1 = ${CMAKE_MATCH_1}")
else()
  message( "X. Not indexed file!: ${index_filename}" )
endif()


# Extracting values from CSV row.
set( row "Engine, 2500, Max Speed, 177, BHP, 350" ) # A speedy number!
if ( ${row} MATCHES "([0-9]+).*, ([0-9]+).*, ([0-9]+).*" )
  message( "11. Numbers found." )
  message( "    CMAKE_MATCH_0 = ${CMAKE_MATCH_0}")
  message( "    CMAKE_MATCH_1 = ${CMAKE_MATCH_1}")
  message( "    CMAKE_MATCH_2 = ${CMAKE_MATCH_2}")
  message( "    CMAKE_MATCH_3 = ${CMAKE_MATCH_3}")
else()
  message( "X. Bad CSV row." )
endif()
