
set(CMAKE_REPO_URL https://github.com/Eyescale/CMake.git)
set(CMAKE_REPO_TAG master)
set(CMAKE_NOTEST ON)
set(CMAKE_SKIPFIND ON)
set(CMAKE_OPTIONAL ON)

set(CMAKE_EXTRA
  CONFIGURE_COMMAND ${CMAKE_COMMAND} -E touch ${CMAKE_BINARY_DIR}/CMake/config.status
  BUILD_COMMAND ${CMAKE_COMMAND} -E touch ${CMAKE_BINARY_DIR}
  INSTALL_COMMAND ${CMAKE_COMMAND} -E touch ${CMAKE_BINARY_DIR}
)
