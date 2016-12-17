# pine64-gt9xxf_ts
Touchscreen touch driver for Pine64 Debian

longsleep's Linux kernel doesn't include this driver, so you need to compile it yourself separately.

I recommend you upgrade longleep's kernel first, just use his scripts:

    bash <(curl -s https://raw.githubusercontent.com/longsleep/build-pine64-image/master/simpleimage/platform-scripts/pine64_update_uboot.sh)
    bash <(curl -s https://raw.githubusercontent.com/longsleep/build-pine64-image/master/simpleimage/platform-scripts/pine64_update_kernel.sh)

then reboot.

clone this repository into some directory, build it, and install it:

    git clone https://github.com/atomicmooseca/pine64-gt9xxf_ts
    cd pine64-gt9xxf_ts
    make
    sudo make install
