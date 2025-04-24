include_guard()

if(MSVC)
  include("${CMAKE_CURRENT_LIST_DIR}/MSVCFlags.cmake")
else()
  include("${CMAKE_CURRENT_LIST_DIR}/UnixFlags.cmake")
endif()
