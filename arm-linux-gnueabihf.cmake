cmake_minimum_required (VERSION 3.13.0)
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR armv7)

set(CMAKE_SYSROOT "${WEBRTCROOT}/src/build/linux/debian_bullseye_arm-sysroot")
set(tools "${WEBRTCROOT}/src/third_party/llvm-build/Release+Asserts")

set(triple arm-linux-gnueabihf)
set(CMAKE_C_COMPILER ${tools}/bin/clang)
set(CMAKE_C_COMPILER_TARGET ${triple})
set(CMAKE_CXX_COMPILER ${tools}/bin/clang++)
set(CMAKE_CXX_COMPILER_TARGET ${triple})
add_link_options("-fuse-ld=lld")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)