# Cmake-easy by Codefrogs
#
# Lets explore file transfer.
# Note this script will not work as we are using just placeholders
# for the URL addresses. So feel free to update url_src, and url_dst!

cmake_minimum_required(VERSION 3.29)
message( "Cmake-easy by Codefrogs")
message( "" )

# Sets up this example (can ignore)
function( setUp )
  set(url_src "https://enter-domain-dot-com/files/my_file.txt" PARENT_SCOPE)
  set(url_dst "https://enter-domain-dot-com/files" PARENT_SCOPE)
  set(download_file "download_file.txt" PARENT_SCOPE)
  set(upload_file "upload_file.txt" )
  set(upload_file ${upload_file} PARENT_SCOPE)

  file(WRITE ${upload_file} "# Test file for uploading to URL")
endfunction()

# Cleans up after example (can ignore)
function( cleanUp )
  file( REMOVE ${download_file})
  file( REMOVE ${upload_file})
endfunction()

# Shows error message (can ignore)
function( showError ret_val err_msg )  
  message("Error: ${err_msg}: ${ret_val}")
endfunction()

setUp()

message( "File download example" )
message( "---------------------" )
message( "" )

# ----- DOWNLOAD ------
message("Downloading...")
file(DOWNLOAD ${url_src} ${download_file} STATUS download_status)

list(GET 0 is_downloaded ${download_status})
if (${is_downloaded})
  message("Download OK.")
else()
  message("Failed download of: ${url_src}")
  showError(${download_status})
endif()

message("")

# ----- UPLOAD -----
message("Uploading...")
file(UPLOAD ${upload_file} ${url_dst} STATUS upload_status)

list(GET 0 is_uploaded ${upload_status})
if (${is_uploaded})
  message("Uploaded OK.")
else()
  message("Failed upload of: ${upload_file}")
  showError(${upload_status})
endif()

cleanUp()
