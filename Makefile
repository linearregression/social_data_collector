# -*- mode: Makefile; fill-column: 80; comment-column: 75; -*-

ACTIVATOR= $(shell pwd)/activator -v

PATH := $(shell pwd)/build:$(shell pwd):$(PATH)

.PHONY: all

all: compile 
 
release: compile
	@$(ACTIVATOR) package

release-only: reload
	@$(ACTIVATOR) package 

test:
	@$(ACTIVATOR) test

compile: 
	@$(ACTIVATOR) compile

reload: 
	@$(ACTIVATOR) reload




