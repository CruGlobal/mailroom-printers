# Modify the following xxx_FORMS variables to change what's generated
# PRINTERS will generate files for the given list of printers
PRINTERS := 7125VP iR110
# GIVE_FORMS will generate 7125VP-Give-1Page.ppd, etc
GIVE_FORMS := 1 2 3 4 5
# RECEIPT_FORMS will generate cups-receipt-AIA.ppd, etc
RECEIPT_FORMS := AIA CCC CHEM CHRL FMLY GAIN HLC IMP JESU JSHG USDV CAMP
# REMINDER_FORMS will generate cups-reminder-RJF.ppd, etc
REMINDER_FORMS := RJF RST

# Run the following to generate needed files:
# make clean - cleans Obj Drv Ppd directories
# make - generates  the pstokodak filter and all the required ppd files
# make install - copies pstokodak to /usr/lib/cups/filter/root
# 
# you can then add/modify the printer definitions and specify a ppd file
# in ./ppd

CC = g++
LD = g++
CFLAGS = -g -Wall
LDFLAGS =
SHELL = /bin/bash

PATH := $(PATH):.
LIB_DIR := /usr/libexec
CUPS_DIR := $(LIB_DIR)/cups
FILTER_DIR := $(CUPS_DIR)/filter
ROOT_DIR := $(FILTER_DIR)/root

MODULE := pstokodak

OBJS := $(MODULE)

all: $(OBJS)

install: | $(ROOT_DIR)
	sudo cp $(MODULE) $(ROOT_DIR)

clean:
	sudo rm $(MODULE)

$(FILTER_DIR): | $(CUPS_DIR)
	-sudo mkdir -p -m 555 $@

$(ROOT_DIR): | $(FILTER_DIR)
	-sudo mkdir -p -m 755 $@
