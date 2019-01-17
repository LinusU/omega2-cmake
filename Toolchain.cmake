SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_VERSION 1)

SET(CMAKE_C_COMPILER /toolchain/source/staging_dir/toolchain-mipsel_24kc_gcc-5.4.0_musl-1.1.16/bin/mipsel-openwrt-linux-gcc)
SET(CMAKE_CXX_COMPILER /toolchain/source/staging_dir/toolchain-mipsel_24kc_gcc-5.4.0_musl-1.1.16/bin/mipsel-openwrt-linux-g++)

SET(CMAKE_FIND_ROOT_PATH /toolchain/source/staging_dir/toolchain-mipsel_24kc_gcc-5.4.0_musl-1.1.16)

SET(OPENSSL_INCLUDE_DIR /toolchain/source/build_dir/target-mipsel_24kc_musl-1.1.16/openssl-1.0.2k/include)
SET(OPENSSL_CRYPTO_LIBRARY /toolchain/source/build_dir/target-mipsel_24kc_musl-1.1.16/openssl-1.0.2k/libcrypto.so)

SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
