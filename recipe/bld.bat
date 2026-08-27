mkdir build
cd build

cmake -G "Ninja" ^
      -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      -D CMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
      -D CMAKE_BUILD_TYPE=Release ^
      -D BUILD_SHARED_LIBS=ON ^
      ..
if errorlevel 1 exit 1

ninja
if errorlevel 1 exit 1

ninja install
if errorlevel 1 exit 1