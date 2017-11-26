# Makefile – makefile of first example driver
 
# if KERNELRELEASE is defined, we've been invoked from the
# kernel build system and can use its language.
ifneq (${KERNELRELEASE},)
	obj-m := fed.o
# Otherwise we were called directly from the command line.
# Invoke the kernel build system.
else
	WORKING_DIRECTORY := $(shell pwd)
	KERNEL_VERSION := $(shell uname -r)
	KERNEL_SOURCE := /lib/modules/${KERNEL_VERSION}/build
	PWD := $(shell pwd)
default:
	${MAKE} -C ${KERNEL_SOURCE} SUBDIRS="." modules M=${WORKING_DIRECTORY}
 
clean:
	${MAKE} -C ${KERNEL_SOURCE} SUBDIRS="." clean
endif

