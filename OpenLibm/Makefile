OPENLIBM_HOME=$(abspath .)

AR			= llvm-ar
CC			= clang
WASMLD		= wasm-ld
WASMOPT     = wasm-opt
WASM2WAT	= wasm-dis
WASM2C		= wasm2c

# Default build rule for any Makefile in this project: all
default: all

VERSION = 0.8.0
DESTDIR =
prefix ?= /usr/local
bindir ?= $(prefix)/bin
libdir ?= $(prefix)/lib
includedir ?= $(prefix)/include

BUILD   = DEBUG

#------------------------------------------------------------------------------------------------------

ifeq ($(BUILD),RELEASE)
  OUTDIR    := Release
  DBGCFLAGS := -DNDEBUG
  LDFLAGS   := -strip-all -gc-sections
  WOPTFLAGS := -O3
else
  OUTDIR    := Debug
  DBGCFLAGS := -DDEBUG -D_DEBUG
  LDFLAGS   :=
  WOPTFLAGS := -g -O0
endif


# Flags for wasm-ld
LDFLAGS += -no-entry
LDFLAGS += -allow-undefined
LDFLAGS += -import-memory
#LDFLAGS += -initial-memory=1048576
#LDFLAGS += -max-memory=1048576
LDFLAGS += -no-gc-sections
LDFLAGS += -export-all
LDFLAGS += $(addprefix -export=,$(patsubst _%,%,$(strip $(EXPORTS))))

CFLAGS_add =
CFLAGS_add += $(WOPTFLAGS)
CFLAGS_add += $(DBGCFLAGS)
CFLAGS_add += -fno-builtin -fno-strict-aliasing -ffreestanding -nostdlib -nostdinc --target=wasm32
CFLAGS_add += -std=c99 -Wall -I. -I./include -I./wasm32 -I./src -D__BSD_VISIBLE -Wno-implicit-function-declaration

LDFLAGS_add += $(LDFLAGS_arch)

# Determines whether `long double` is the same as `double` on this arch.
# linux x86_64, for instance, `long double` is 80 bits wide, whereas on macOS aarch64,
# `long double` is the same as `double`. 
LONG_DOUBLE_NOT_DOUBLE := 0

# Makefile debugging trick:
# call print-VARIABLE to see the runtime value of any variable
print-%:
	@echo '$*=$($*)'

SUBDIRS = src

include Make.files

SRCS := $(addprefix src/,$(SOURCEFILES))
OBJS := $(patsubst %.c,%.c.o,$(SRCS))
DEPS := $(patsubst %.c.o,%.c.d,$(OBJS))

.PHONY: all check clean test 


-include $(DEPS)

OLM_LIB := libopenlibm.a

all : $(OLM_LIB) openlibm.wasm openlibm.wat


$(OLM_LIB): Makefile $(OBJS)
	$(info Archive objects)
	$(AR) -rcs libopenlibm.a $(OBJS)

openlibm.wasm : Makefile $(OBJS)
	$(info Link $@ ...)
	@$(WASMLD) $(LDFLAGS) -o $@ $(OBJS)
	@"$(WASMOPT)" --legalize-js-interface $(WOPTFLAGS) $@ -o $@

openlibm.wat: openlibm.wasm
	$(info Wasm->Wat $@ ...)
	@"$(WASM2WAT)" openlibm.wasm -o $@


$(OBJS): Makefile

%.c.o: %.c
	$(CC) $(CPPFLAGS) $(CFLAGS) $(CFLAGS_add) -MMD -MP -MF $(patsubst %.o,%.d,$@) -c $< -o $@

clean:
	rm -f src/*.o src/*.d
	rm -f libopenlibm.a
	$(MAKE) -C test clean

test: test/test-double test/test-float
	test/test-double
	test/test-float

test/test-double: libopenlibm.$(OLM_MAJOR_MINOR_SHLIB_EXT)
	$(MAKE) -C test test-double

test/test-float: libopenlibm.$(OLM_MAJOR_MINOR_SHLIB_EXT)
	$(MAKE) -C test test-float

