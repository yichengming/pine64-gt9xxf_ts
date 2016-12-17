#
# Makefile for the touchscreen drivers.
#

# Each configuration option enables a list of files.

obj-m += gt9xxf_ts.o
gt9xxf_ts-objs := gt9xx_update.o goodix_tool.o gt9xxf.o init-input.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
