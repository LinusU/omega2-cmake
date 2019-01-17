FROM ubuntu:18.04

# Install prerequisites
RUN apt-get update && apt-get install -y git wget curl subversion build-essential libncurses5-dev zlib1g-dev gawk flex quilt git-core unzip libssl-dev python-dev python-pip libxml-parser-perl cmake

# Clone toolchain source
WORKDIR /toolchain
RUN git clone https://github.com/OnionIoT/source.git && cd source && git checkout 8d3b49a

# Apply patches
WORKDIR /toolchain/source
RUN git remote add upstream https://github.com/openwrt/openwrt && git fetch upstream
RUN git config --global user.email "you@example.com" && git config --global user.name "Your Name"

# https://github.com/openwrt/openwrt/commit/58a95f0f8ff768b43d68eed2b6a786e0f40f723b
RUN git cherry-pick 58a95f0f8ff768b43d68eed2b6a786e0f40f723b

# Build toolchain
WORKDIR /toolchain/source
RUN FORCE_UNSAFE_CONFIGURE=1 make -j8 toolchain/install

# Build openssl
WORKDIR /toolchain/source
RUN make -j8 package/openssl/compile

# Add files
COPY builder.sh /builder.sh
COPY Toolchain.cmake /Toolchain.cmake

# Setup volumes
VOLUME /build
WORKDIR /build

# Setup env
ENV STAGING_DIR /toolchain/source/staging_dir

# Setup entrypoint
ENTRYPOINT /builder.sh
