mkdir build
cd build

:: CMake ≥4.0 removed support for cmake_minimum_required versions below 3.5,
:: so this CUnit CMakeLists.txt fails to configure with modern CMake.
set "CMAKE_POLICY_VERSION_MINIMUM=3.5"

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
