CROSS_COMPILE    ?= arm-himix200-linux-
#ARCH             ?= arm
ARCH             ?= arm
#KERNEL_DIR	?= /usr/src/linux-headers-4.4.0-175/
KERNEL_DIR ?= /home/jiaosong/workspace/src/github/linux

CC := $(CROSS_COMPILE)gcc
#KERNEL_INCLUDE	:= -I$(KERNEL_DIR)/include -I$(KERNEL_DIR)/arch/$(ARCH)/include
#KERNEL_INCLUDE := -I$(KERNEL_DIR)/include
CFLAGS := -W -Wall -g $(KERNEL_INCLUDE)
LDFLAGS := -g

all: uvc-gadget

uvc-gadget: uvc-gadget.o
	$(CC) $(LDFLAGS) -o $@ $^

clean:
	rm -f *.o
	rm -f uvc-gadget

