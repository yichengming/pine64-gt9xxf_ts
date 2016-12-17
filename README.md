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

And another reboot.

Run lsmod as root to confirm that the gt9xxf_ts module loaded on reboot. Now you need to find the 'event#' device that it is assigned to. Execute:

    cat /proc/bus/input/devices | grep -B 2 -A 8 gt9xxf_ts

It should give you an output like this:

    I: Bus=0018 Vendor=dead Product=beef Version=28bb
    N: Name="gt9xxf_ts"
    P: Phys=input/goodix-ts
    S: Sysfs=/devices/virtual/input/input7
    U: Uniq=
    H: Handlers=event5 autohotplug
    B: PROP=2
    B: EV=b
    B: KEY=400 0 0 0 0 0
    B: ABS=265000000000000

What you are looking for is the 'event#' device on the 'Handlers=' line. In my case it's 'event5'. Please note: it can change on every reboot, I leave it up to you to figure that out if you need to.

Next install 'evtest', it's in the repositories:

    apt-get install evtest

as root run 'evtest' with the event handler you located above:

    evtest /dev/input/event5

Now touch the screen and it should display screen touch events. Ctrl-C to exit.

That's it!
