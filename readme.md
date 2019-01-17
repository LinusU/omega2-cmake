# Omega2 CMake Toolchain

This is a Docker image with an Omega2 Toolchain setup together with CMake. It can be used to easily build CMake projects and produce MIPS binaries that can run on the Omega2.

## Usage

Run the following command to build the CMake project in the current directory:

```sh
docker run --rm -it -v $(pwd):/build linusu/omega2-cmake
```

The built files will be outputed into a directory called `build-omega2`.

## Building Images

Produce the image by running this command:

```sh
docker build -t linusu/omega2-cmake .
```
