INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_AISTX aistx)

FIND_PATH(
    AISTX_INCLUDE_DIRS
    NAMES aistx/api.h
    HINTS $ENV{AISTX_DIR}/include
        ${PC_AISTX_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    AISTX_LIBRARIES
    NAMES gnuradio-aistx
    HINTS $ENV{AISTX_DIR}/lib
        ${PC_AISTX_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
          )

include("${CMAKE_CURRENT_LIST_DIR}/aistxTarget.cmake")

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(AISTX DEFAULT_MSG AISTX_LIBRARIES AISTX_INCLUDE_DIRS)
MARK_AS_ADVANCED(AISTX_LIBRARIES AISTX_INCLUDE_DIRS)
