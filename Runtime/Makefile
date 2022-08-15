#
# This is free and unencumbered software released into the public domain.
#
# Anyone is free to copy, modify, publish, use, compile, sell, or
# distribute this software, either in source code form or as a compiled
# binary, for any purpose, commercial or non-commercial, and by any
# means.
#
# In jurisdictions that recognize copyright laws, the author or authors
# of this software dedicate any and all copyright interest in the
# software to the public domain. We make this dedication for the benefit
# of the public at large and to the detriment of our heirs and
# successors. We intend this dedication to be an overt act of
# relinquishment in perpetuity of all present and future rights to this
# software under copyright law.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.
#
# For more information, please refer to <http://unlicense.org/>
#

LLVM_ROOT   = C:/dev/knut/scoop/apps/llvm/current/bin
CLANG      	= clang
AR			= llvm-ar
WASMLD		= wasm-ld
WASMOPT     = wasm-opt
WASM2WAT	= wasm-dis
WASM2C		= wasm2c

EXPORTS = 
OTHER_SOURCES = $(wildcard *.c) src/Obi.cpp src/tester.c src/kernel/core/core.c
ALL_SOURCES = $(OTHER_SOURCES)
SOURCES = $(ALL_SOURCES)
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

INCLUDES = -Isrc/include

# Global compiler flags
CXXFLAGS := $(DBGCFLAGS) -Ofast -std=c++17 -fno-rtti -Wno-writable-strings -Wno-unknown-pragmas $(INCLUDES)
CCFLAGS  := $(DBGCFLAGS) -Ofast -std=c2x $(INCLUDES) -Werror=implicit-function-declaration

# Global compiler flags for Wasm targeting
CLANGFLAGS := -target wasm32 -nostdinc
CLANGFLAGS += -fvisibility=hidden -fno-builtin -fno-exceptions -fno-threadsafe-statics

# Flags for wasm-ld
LDFLAGS += -no-entry
LDFLAGS += -allow-undefined
#LDFLAGS += -import-memory
LDFLAGS += -initial-memory=1048576
LDFLAGS += -max-memory=1048576
LDFLAGS += -no-gc-sections
LDFLAGS += -export-all
LDFLAGS += -demangle
LDFLAGS += $(addprefix -export=,$(patsubst _%,%,$(strip $(EXPORTS))))

# Project Build flags, add defines from the make command line (e.g. D=MACRO=VALUE)
FLAGS := $(subst \\\, ,$(foreach F,$(subst \ ,\\\,$(D)),"-D$(F)"))

# Check if there are any source files
ifeq ($(SOURCES),)
  $(error No source files found for build)
endif

# Compute tool paths
ISWIN := $(findstring :,$(firstword $(subst \, ,$(subst /, ,$(abspath .)))))
PIPETONULL := $(if $(ISWIN),>nul 2>nul,>/dev/null 2>/dev/null)

# Surround used commands with double quotes
CC  := "$(CLANG)"
CXX := "$(CLANG)" -x c++
LD  := "$(WASMLD)"

.PHONY: clean cleanall run analyze

all: $(OUTDIR)/output.wasm $(OUTDIR)/output.wat $(OUTDIR)/output.c 

clean:
	$(info Removing all build files ...)
	@$(if $(wildcard $(OUTDIR)),$(if $(ISWIN),rmdir /S /Q,rm -rf) "$(OUTDIR)" $(PIPETONULL))

# Generate a list of .o files to build, include dependency rules for source files, then compile files
OTHER_OBJS := $(addprefix $(OUTDIR)/,$(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(OTHER_SOURCES))))
OBJS := $(OTHER_OBJS)

-include $(OBJS:%.o=%.d)

define MAKE_OBJ
$(OUTDIR)/$(basename $(1)).o: $(1) Makefile
	$$(call COMPILE, $$@, $$<, $(2), $(3) $$(FLAGS))
endef

define COMPILE
	$(info Compile $(strip $2))
	@$(if $(wildcard $(dir $1)),,$(shell mkdir "$(dir $1)"))
	@$3 $4 $(CLANGFLAGS) -MMD -MP -MF $(patsubst %.o,%.d,$1) -o $1 -c $2
endef

$(foreach F,$(filter %.cpp,$(ALL_SOURCES)),$(eval $(call MAKE_OBJ,$(F),$$(CXX),$$(CXXFLAGS))))
$(foreach F,$(filter %.c  ,$(ALL_SOURCES)),$(eval $(call MAKE_OBJ,$(F),$$(CC),$$(CCFLAGS))))


$(OUTDIR)/output.wasm : Makefile $(OTHER_OBJS) ../OpenLibm/libopenlibm.a
	$(info Link $@ ...)
	@$(LD) $(LDFLAGS) -L../OpenLibm -lopenlibm -o $@ $(OTHER_OBJS)
	@"$(WASMOPT)" --legalize-js-interface $(WOPTFLAGS) $@ -o $@

$(OUTDIR)/output.wat: $(OUTDIR)/output.wasm
	$(info Wasm->Wat $@ ...)
	@"$(WASM2WAT)" $(OUTDIR)/output.wasm -o $@

$(OUTDIR)/output.c: $(OUTDIR)/output.wasm
	$(info Wasm->C+H $@ ...)
	@"$(WASM2C)" $(OUTDIR)/output.wasm -o $@
