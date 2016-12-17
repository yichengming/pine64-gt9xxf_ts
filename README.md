# pine64-gt9xxf_ts
Pine64 touchscreen driver for debian linux

Touchscreen touch driver for Debian linux on Pine64. longsleep's Linux kernel doesn't include this driver, so you need to compile it yourself separately.

I recommend you longleep's kernel first. Just use his upgrade scripts:

    bash <(curl -s https://raw.githubusercontent.com/longsleep/build-pine64-image/master/simpleimage/platform-scripts/pine64_update_uboot.sh)
    bash <(curl -s https://raw.githubusercontent.com/longsleep/build-pine64-image/master/simpleimage/platform-scripts/pine64_update_kernel.sh)

then reboot.

clone this repository into some directory, build it, and install it:

    git clone https://github.com/atomicmooseca/pine64-gt9xxf_ts
    cd pine64-gt9xxf_ts
    make
    sudo make install
