#!/usr/bin/env make -f

CC := g++
CFLAGS := -std=gnu++1y -Wall
EXTENSION := .cc
SOURCES = $(wildcard src/*$(EXTENSION))
TARGETS = $(SOURCES: .cc=)

.DEFAULT_GOAL: all

.PHONY: all
all: $(TARGETS)

$(TARGETS):
	$(CC) $(CFLAGS) -o $@ $<
