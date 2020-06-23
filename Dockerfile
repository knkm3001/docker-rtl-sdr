FROM ubuntu:18.04

RUN apt update && \
    apt install git cmake pkg-config libusb-1.0-0-dev vim -y && \
\
#rtl-tcp build
\
    git clone git://git.osmocom.org/rtl-sdr.git && \
    cd rtl-sdr && \
    mkdir build && \
    cd build && \
    cmake ../ -DINSTALL_UDEV_RULES=ON && \
    make && \
    make install && \
    ldconfig

CMD ["rtl_tcp", "-a", "0.0.0.0"]