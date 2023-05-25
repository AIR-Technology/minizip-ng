#!/bin/sh

cmake -D ZLIBNG_LIBRARY=../zlib-ng/libz-ng.a -D ZLIBNG_INCLUDE_DIRS=../zlib-ng -S . -B build -D MZ_BUILD_TESTS=ON -D MZ_BUILD_UNIT_TESTS=ON -D MZ_PKCRYPT=OFF -D MZ_OPENSSL=OFF
cmake --build build
build/test/gtest_minizip
