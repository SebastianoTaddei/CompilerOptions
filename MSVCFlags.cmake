include_guard()

set(MSVC_COMPILE_FLAGS
  "/WX"
  "/permissive"
  "/W4"
  "/w14242"
  "/w14254"
  "/w14263"
  "/w14265"
  "/w14287"
  "/we4289"
  "/w14296"
  "/w14311"
  "/w14545"
  "/w14546"
  "/w14547"
  "/w14549"
  "/w14555"
  "/w14619"
  "/w14640"
  "/w14826"
  "/w14905"
  "/w14906"
  "/w14928"
)

add_compile_options(${MSVC_COMPILE_FLAGS})

