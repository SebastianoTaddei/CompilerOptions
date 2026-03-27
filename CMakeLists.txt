cmake_minimum_required(VERSION 3.14)

function(target_apply_options target)
  set(COMPILER_OPTIONS)
  if(MSVC)
    list(APPEND COMPILER_OPTIONS
      /WX
      /permissive
      /W4
      /w14242
      /w14254
      /w14263
      /w14265
      /w14287
      /we4289
      /w14296
      /w14311
      /w14545
      /w14546
      /w14547
      /w14549
      /w14555
      /w14619
      /w14640
      /w14826
      /w14905
      /w14906
      /w14928
    )
  else()
    list(APPEND COMPILER_OPTIONS
      -Werror
      -pedantic
      -Wall
      -Wextra
      -Wshadow
      -Wnon-virtual-dtor
      -Wold-style-cast
      -Wcast-align
      -Wunused
      -Woverloaded-virtual
      -Wpedantic
      -Wconversion
      -Wsign-conversion
      -Wdouble-promotion
      -Wformat=2
      -Wimplicit-fallthrough
      -Wreturn-local-addr
    )

    if(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
      list(APPEND COMPILER_OPTIONS
        -Wmisleading-indentation
        -Wduplicated-cond
        -Wduplicated-branches
        -Wlogical-op
        -Wnull-dereference
        -Wuseless-cast
      )
    elseif(CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
      list(APPEND COMPILER_OPTIONS
        # -Wlifetime will come with future versions of clang
      )
    endif()
  endif()

  target_compile_options(${target} PRIVATE ${COMPILER_OPTIONS})
endfunction()
