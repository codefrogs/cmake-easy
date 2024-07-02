cmake_minimum_required(VERSION 3.29)

# How to set a variable

# Creates the variable NAME
set(NAME "Dijkstra")

# How to display a variable in a message
# Looks a bit like bash!
message("1. Computer Scientist: ${NAME}")

# We can unset a variable like this:
unset(NAME)

message("2. Name: ${NAME}")

# Environment variables
# ---------------------

# Environment variables have the form 'ENV{<name>}'
message("3. User: $ENV{USER}")

# Let's check the value of an unknown variable, CWD
message("4. CWD: $ENV{CWD}")

# Setting an environment variable
set( ENV{CWD} "Unknown")
message( "5. CWD: $ENV{CWD}" )

# Setting a CACHE variable
# ------------------------

# If you run up cmake-gui you will see a variable listed
# as 'featureX' and with a tick-box with a tick.
# The text describes the variable.
set( featureX true CACHE BOOL "turn on feature X")

