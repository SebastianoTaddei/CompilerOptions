include_guard()

set(COMMON_CXX_FLAGS
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
  list(APPEND COMMON_CXX_FLAGS
    "-Wmisleading-indentation"
    "-Wduplicated-cond"
    "-Wduplicated-branches"
    "-Wlogical-op"
    "-Wnull-dereference"
    "-Wuseless-cast"
  )
elseif(CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
  list(APPEND COMMON_CXX_FLAGS
    # "-Wlifetime" will come with future versions of clang
  )
endif()

add_compile_options(${COMMON_CXX_FLAGS})

