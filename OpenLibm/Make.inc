# -*- mode: makefile-gmake -*-

# Default build rule for any Makefile in this project: all
default: all

# Do not forget to bump SOMINOR when changing VERSION,
# and SOMAJOR when breaking ABI in a backward-incompatible way
VERSION = 0.8.0
SOMAJOR = 4
SOMINOR = 0
DESTDIR =
prefix ?= /usr/local
bindir ?= $(prefix)/bin
libdir ?= $(prefix)/lib
includedir ?= $(prefix)/include

AR = llvm-ar
CC = clang
CFLAGS_add += -fno-builtin -fno-strict-aliasing

# If CFLAGS does not contain a -O optimization flag, default to -O3
ifeq ($(findstring -O,$(CFLAGS)),)
CFLAGS_add += -O3
endif

#keep these if statements separate
SHLIB_EXT = so
SONAME_FLAG = -soname
CFLAGS_add += -fPIC
shlibdir = $(libdir)

# Add `-march` to our CFLAGS if it's defined
ifneq ($(MARCH),)
CFLAGS_arch += -march=$(MARCH)
endif

CFLAGS_arch += -ffreestanding -nostdlib -nostdinc --target=wasm32-unknown-unknown

# Add our "arch"-related FLAGS in.  We separate arch-related flags out so that
# we can conveniently get at them for targets that don't want the rest of
# *FLAGS_add, such as the testing Makefile targets
CFLAGS_add  += $(CFLAGS_arch)
LDFLAGS_add += $(LDFLAGS_arch)

CFLAGS_add += -std=c99 -Wall -I$(OPENLIBM_HOME) -I$(OPENLIBM_HOME)/include -I$(OPENLIBM_HOME)/$(ARCH) -I$(OPENLIBM_HOME)/src -DASSEMBLER -D__BSD_VISIBLE -Wno-implicit-function-declaration

# Determines whether `long double` is the same as `double` on this arch.
# linux x86_64, for instance, `long double` is 80 bits wide, whereas on macOS aarch64,
# `long double` is the same as `double`. 
LONG_DOUBLE_NOT_DOUBLE := 1

%.c.o: %.c
	$(CC) $(CPPFLAGS) $(CFLAGS) $(CFLAGS_add) -c $< -o $@


# Makefile debugging trick:
# call print-VARIABLE to see the runtime value of any variable
print-%:
	@echo '$*=$($*)'
