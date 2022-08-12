OPENLIBM_HOME=$(abspath .)

# Default build rule for any Makefile in this project: all
default: all

VERSION = 0.8.0
DESTDIR =
prefix ?= /usr/local
bindir ?= $(prefix)/bin
libdir ?= $(prefix)/lib
includedir ?= $(prefix)/include

AR = llvm-ar
CC = clang

CFLAGS_add  = -O3 -fno-builtin -fno-strict-aliasing -ffreestanding -nostdlib -nostdinc --target=wasm32-unknown-unknown
LDFLAGS_add += $(LDFLAGS_arch)

CFLAGS_add += -std=c99 -Wall -I$(OPENLIBM_HOME) -I$(OPENLIBM_HOME)/include -I$(OPENLIBM_HOME)/wasm32 -I$(OPENLIBM_HOME)/src -DASSEMBLER -D__BSD_VISIBLE -Wno-implicit-function-declaration

# Determines whether `long double` is the same as `double` on this arch.
# linux x86_64, for instance, `long double` is 80 bits wide, whereas on macOS aarch64,
# `long double` is the same as `double`. 
LONG_DOUBLE_NOT_DOUBLE := 0

# Makefile debugging trick:
# call print-VARIABLE to see the runtime value of any variable
print-%:
	@echo '$*=$($*)'

SUBDIRS = src wasm32 bsdsrc

define INC_template
TEST=test
override CUR_SRCS = $(1)_SRCS
include $(1)/Make.files
SRCS += $$(addprefix $(1)/,$$($(1)_SRCS))
endef

-include $(OBJS:%.o=%.c.d)

DIR=test

$(foreach dir,$(SUBDIRS),$(eval $(call INC_template,$(dir))))

DUPLICATE_NAMES = $(filter $(patsubst %.S,%,$(wasm32_SRCS)),$(patsubst %.c,%,$(src_SRCS)))
DUPLICATE_SRCS = $(addsuffix .c,$(DUPLICATE_NAMES))

OBJS =  $(patsubst %.f,%.f.o,\
	$(patsubst %.S,%.S.o,\
	$(patsubst %.c,%.c.o,$(filter-out $(addprefix src/,$(DUPLICATE_SRCS)),$(SRCS)))))

.PHONY: all check test clean distclean install install-static install-headers


OLM_LIB := libopenlibm.a

all : $(OLM_LIB)

%.c.o: %.c
	$(CC) $(CPPFLAGS) $(CFLAGS) $(CFLAGS_add) -MMD -MP -MF $(patsubst %.o,%.d,$@) -c $< -o $@


check test: test/test-double test/test-float
	test/test-double
	test/test-float

$(OLM_LIB): Makefile $(OBJS)
	$(AR) -rcs libopenlibm.a $(OBJS)

test/test-double: libopenlibm.$(OLM_MAJOR_MINOR_SHLIB_EXT)
	$(MAKE) -C test test-double

test/test-float: libopenlibm.$(OLM_MAJOR_MINOR_SHLIB_EXT)
	$(MAKE) -C test test-float

clean:
	rm -f bsdsrc/*.o src/*.o
	rm -f libopenlibm.a libopenlibm.*$(SHLIB_EXT)*
	$(MAKE) -C test clean

install-static: libopenlibm.a
	mkdir -p $(DESTDIR)$(libdir)
	cp -RpP -f libopenlibm.a $(DESTDIR)$(libdir)/

install-headers:
	mkdir -p $(DESTDIR)$(includedir)/openlibm
	cp -RpP -f include/*.h $(DESTDIR)$(includedir)/openlibm
	cp -RpP -f src/*.h $(DESTDIR)$(includedir)/openlibm

install: install-static install-headers
