#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "triangle::triangle" for configuration "Release"
set_property(TARGET triangle::triangle APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(triangle::triangle PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libtriangle.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS triangle::triangle )
list(APPEND _IMPORT_CHECK_FILES_FOR_triangle::triangle "${_IMPORT_PREFIX}/lib/libtriangle.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
