#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "tetgen::tetgen" for configuration "Release"
set_property(TARGET tetgen::tetgen APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(tetgen::tetgen PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libtetgen.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS tetgen::tetgen )
list(APPEND _IMPORT_CHECK_FILES_FOR_tetgen::tetgen "${_IMPORT_PREFIX}/lib/libtetgen.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
