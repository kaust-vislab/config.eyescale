
set(POPPLER_PACKAGE_VERSION 0.24)
set(POPPLER_REPO_URL https://github.com/BlueBrain/Poppler.git)
set(POPPLER_REPO_TAG bbp)
set(POPPLER_OPTIONAL ON)
#<<<<<<< HEAD
#set(POPPLER_CMAKE_ARGS -DENABLE_UTILS=OFF -DCMAKE_OSX_ARCHITECTURES=x86_64)
#=======
set(POPPLER_CMAKE_ARGS -DENABLE_UTILS=OFF -DENABLE_GLIB=OFF)
>>>>>>> upstream/master
set(POPPLER_DEPENDS REQUIRED Qt4)
