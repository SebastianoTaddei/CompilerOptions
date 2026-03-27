include_guard()

list(APPEND COMPILER_OPTIONS
  "-Werror"
  "-pedantic"
  "-Wall"
  "-Wextra"
  "-Wshadow"
  "-Wnon-virtual-dtor"
  "-Wold-style-cast"
  "-Wcast-align"
  "-Wunused"
  "-Woverloaded-virtual"
  "-Wpedantic"
  "-Wconversion"
  "-Wsign-conversion"
  "-Wdouble-promotion"
  "-Wformat=2"
  "-Wimplicit-fallthrough"
  "-Wreturn-local-addr"
)

if(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
  list(APPEND COMPILER_OPTIONS
    "-Wmisleading-indentation"
    "-Wduplicated-cond"
    "-Wduplicated-branches"
    "-Wlogical-op"
    "-Wnull-dereference"
    "-Wuseless-cast"
  )
elseif(CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
  list(APPEND COMPILER_OPTIONS
    # "-Wlifetime" will come with future versions of clang
  )
endif()
