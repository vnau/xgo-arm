FROM karalabe/xgo-latest
RUN mkdir /arm-toolchain && \
    cd /arm-toolchain && \
    wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2018q4/gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2 && \
    tar -xjf gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2 && \
    rm gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2 && \
    apt-get update && \
    apt-get -y install debhelper dh-systemd
ENV PATH="/arm-toolchain/gcc-arm-none-eabi-8-2018-q4-major/bin:${PATH}"
