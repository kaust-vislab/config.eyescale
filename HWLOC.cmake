
set(HWLOC_PACKAGE_VERSION 1.1)

# can't autopain on Windows without too much hassle
# can't build universal on OS X
# Haven't bothered on BlueGene yet
if(MSVC OR APPLE OR LINUX_PPC)
  return()
endif()

#set(HWLOC_REPO_URL http://svn.open-mpi.org/svn/hwloc/tags/hwloc-1.4.0/)
set(HWLOC_REPO_URL https://github.com/marwan-abdellah/HWLOC)
set(HWLOC_REPO_TAG display)
set(HWLOC_DEPENDS NVCtrl)
set(HWLOC_REPO_TYPE GIT)
set(HWLOC_SOURCE "${CMAKE_SOURCE_DIR}/src/hwloc")
set(HWLOC_NOPACKAGE ON)
set(HWLOC_NOTEST ON)
set(HWLOC_OPTIONAL ON)
set(HWLOC_EXTRA
  PATCH_COMMAND cd ${HWLOC_SOURCE} && autoreconf -i
  CONFIGURE_COMMAND ${HWLOC_SOURCE}/configure  "--prefix=${CMAKE_CURRENT_BINARY_DIR}/install" CPPFLAGS=-I${CMAKE_CURRENT_BINARY_DIR}/install/include LDFLAGS=-L${CMAKE_CURRENT_BINARY_DIR}/install/lib
)
