cmake_minimum_required(VERSION 3.14)

set(COMPILER_OPTIONS)
include("${CMAKE_CURRENT_LIST_DIR}/SetupCompilerFlags.cmake")

add_library(compiler_options INTERFACE)
target_compile_options(compiler_options INTERFACE ${COMPILER_OPTIONS})
message(INFO "${COMPILER_OPTIONS}")
