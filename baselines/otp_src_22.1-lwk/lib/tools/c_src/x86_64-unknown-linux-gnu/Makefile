#
# %CopyrightBegin%
#
# Copyright Ericsson AB 2009-2016. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# %CopyrightEnd%
#

include $(ERL_TOP)/make/output.mk
include $(ERL_TOP)/make/target.mk
include $(ERL_TOP)/erts/include/internal/$(TARGET)/ethread.mk

USING_MINGW=no
USING_VC=no

CC=icc
LD=$(CC)
AR=ar
RANLIB=ranlib
MKDIR=/bin/mkdir
INSTALL=/usr/bin/install -c
INSTALL_DIR=/usr/bin/install -c -d
INSTALL_DATA=${INSTALL} -m 644
INSTALL_PROGRAM=${INSTALL}
LDFLAGS= 

ifeq ($(TYPE),debug)
CFLAGS = -g  -D_GNU_SOURCE -I/home/rsewell/Projects/Epilogue/baselines/otp_src_22.1-lwk/erts/x86_64-unknown-linux-gnu    -DDEBUG
TYPEMARKER=.debug
PRE_LD =
ifeq ($(TARGET),win32)
LDFLAGS += -g
endif
else
ifeq ($(TYPE),purify)
CFLAGS = -Werror=undef -Werror=implicit -Werror=return-type  -g -O2 -I/home/rsewell/Projects/Epilogue/baselines/otp_src_22.1-lwk/erts/x86_64-unknown-linux-gnu   -fno-tree-copyrename  -D_GNU_SOURCE -DPURIFY
TYPEMARKER=.purify
PRE_LD = purify $(PURIFY_BUILD_OPTIONS)
else
ifeq ($(TYPE),quantify)
CFLAGS = -Werror=undef -Werror=implicit -Werror=return-type  -g -O2 -I/home/rsewell/Projects/Epilogue/baselines/otp_src_22.1-lwk/erts/x86_64-unknown-linux-gnu   -fno-tree-copyrename  -D_GNU_SOURCE -DQUANTIFY
TYPEMARKER=.quantify
PRE_LD = quantify $(QUANTIFY_BUILD_OPTIONS)
else
ifeq ($(TYPE),purecov)
CFLAGS = -g  -D_GNU_SOURCE -I/home/rsewell/Projects/Epilogue/baselines/otp_src_22.1-lwk/erts/x86_64-unknown-linux-gnu    -DPURECOV
TYPEMARKER=.purecov
PRE_LD = purecov $(PURECOV_BUILD_OPTIONS)
else
override TYPE=opt
CFLAGS = -Werror=undef -Werror=implicit -Werror=return-type  -g -O2 -I/home/rsewell/Projects/Epilogue/baselines/otp_src_22.1-lwk/erts/x86_64-unknown-linux-gnu   -fno-tree-copyrename  -D_GNU_SOURCE
PRE_LD =
TYPEMARKER =
endif
endif
endif
endif

ifeq ($(findstring -D_GNU_SOURCE,$(CFLAGS)),)
THR_DEFS = $(ETHR_DEFS)
else
# Remove duplicate -D_GNU_SOURCE
THR_DEFS = $(filter-out -D_GNU_SOURCE%, $(ETHR_DEFS))
endif

LIBS=-lutil -ldl -lm   
CREATE_DIRS=

TT_DIR=$(TARGET)/$(TYPE)

BIN_DIR=../bin/$(TARGET)
OBJ_DIR=../obj/$(TT_DIR)

CREATE_DIRS += $(BIN_DIR) $(OBJ_DIR)

PROGS=
DRIVERS=


#
# emem sources, objects, includes, libs, etc...
#


ifneq ($(strip $(ETHR_LIB_NAME)),)
# Need ethread package for emem
PROGS += $(BIN_DIR)/emem$(TYPEMARKER)
endif

EMEM_OBJ_DIR=$(OBJ_DIR)/emem
CREATE_DIRS += $(EMEM_OBJ_DIR)

EMEM_INCLUDES =	-I$(ERL_TOP)/erts/include \
		-I$(ERL_TOP)/erts/include/$(TARGET) \
		-I$(ERL_TOP)/erts/include/internal \
		-I$(ERL_TOP)/erts/include/internal/$(TARGET)

EMEM_HEADERS = erl_memory_trace_block_table.h
EMEM_SRCS = erl_memory.c erl_memory_trace_block_table.c

EMEM_CFLAGS = $(THR_DEFS) $(subst O2,O3, $(CFLAGS)) $(EMEM_INCLUDES)
EMEM_LDFLAGS = $(LDFLAGS)

ifeq ($(USING_VC), yes)
ifeq ($(TYPE),debug)
MT_LIB=MDd
else
MT_LIB=MD
endif

EMEM_CFLAGS += -$(MT_LIB)
EMEM_LDFLAGS += -$(MT_LIB)
EMEM_ERTS_LIB=erts_$(MT_LIB)$(TYPEMARKER)

else

EMEM_ERTS_LIB=erts_r$(TYPEMARKER)

endif

EMEM_ETHR_LIBS=$(subst -l$(ETHR_LIB_NAME),-l$(ETHR_LIB_NAME)$(TYPEMARKER),$(subst -lerts_internal_r,-lerts_internal_r$(TYPEMARKER),$(ETHR_LIBS)))

EMEM_LIBS =	$(LIBS) \
		-L$(ERL_TOP)/erts/lib/$(TARGET) \
		-L$(ERL_TOP)/erts/lib/internal/$(TARGET) \
		-l$(EMEM_ERTS_LIB) \
		$(EMEM_ETHR_LIBS)

EMEM_OBJS = $(addprefix $(EMEM_OBJ_DIR)/,$(notdir $(EMEM_SRCS:.c=.o)))

ERTS_LIB = $(ERL_TOP/erts/lib_src/obj/$(TARGET)/$(TYPE)/MADE

#
# Misc targets
#

_create_dirs := $(shell mkdir -p $(CREATE_DIRS))

all: $(PROGS) $(DRIVERS)

$(ERTS_LIB):
	$(make_verbose)cd $(ERL_TOP)/erts/lib_src && $(MAKE) $(TYPE)


docs:

clean:
	$(RM) -r ../obj/*
	$(RM) -r ../bin/*
	$(RM) ./*~

.PHONY: all erts_lib docs clean

#
# Object targets
#

$(EMEM_OBJ_DIR)/%.o: %.c
	$(V_CC) $(EMEM_CFLAGS) -o $@ -c $<

#
# Driver targets
#

#
# Program targets
#

$(BIN_DIR)/emem$(TYPEMARKER): $(EMEM_OBJS) $(ERTS_LIB)
	$(ld_verbose)$(PRE_LD) $(LD) $(EMEM_LDFLAGS) -o $@ $(EMEM_OBJS) $(EMEM_LIBS)

#
# Release targets
#
include $(ERL_TOP)/make/otp_release_targets.mk
include ../vsn.mk
RELSYSDIR = $(RELEASE_PATH)/lib/tools-$(TOOLS_VSN)

release_spec: all
	$(INSTALL_DIR) "$(RELSYSDIR)/c_src"
	$(INSTALL_DATA) $(EMEM_SRCS) $(EMEM_HEADERS) "$(RELSYSDIR)/c_src"
ifneq ($(PROGS),)
	$(INSTALL_DIR) "$(RELSYSDIR)/bin"
	$(INSTALL_PROGRAM) $(PROGS) "$(RELSYSDIR)/bin"
endif

release_docs_spec:

.PHONY: release_spec release_docs_spec

#
# Make dependencies
#

ifeq ($(USING_VC), yes)
DEP_CC=icc
else
DEP_CC=$(CC)
endif

SED_REPL_EMEM_OBJ_DIR=s|^\([^:]*\)\.o:|$$(EMEM_OBJ_DIR)/\1.o:|g
SED_REPL_OBJ_DIR=s|^\([^:]*\)\.o:|$$(OBJ_DIR)/\1.o:|g
SED_REPL_TT_DIR=s|$(TT_DIR)/|$$(TT_DIR)/|g
SED_REPL_TARGET=s|$(TARGET)/|$$(TARGET)/|g
SED_REPL_ERL_TOP=s|$(ERL_TOP)/|$$(ERL_TOP)/|g

SED_EMEM_DEPEND=sed '$(SED_REPL_EMEM_OBJ_DIR);$(SED_REPL_TT_DIR);$(SED_REPL_TARGET);$(SED_REPL_ERL_TOP)'
SED_DEPEND=sed '$(SED_REPL_OBJ_DIR);$(SED_REPL_TT_DIR);$(SED_REPL_TARGET);$(SED_REPL_ERL_TOP)'

DEPEND_MK=depend.mk

dep depend:
	[ $(v_p) == 0 ] && echo " GEN	"$(DEPEND_MK)
	$(V_colon)@echo "Generating dependency file $(DEPEND_MK)..."
	@echo "# Generated dependency rules." > $(DEPEND_MK);
	@echo "# Do *not* edit this file; instead, run 'make depend'." \
		>> $(DEPEND_MK);
	@echo "# " >> $(DEPEND_MK);
	@echo "# emem objects..." >> $(DEPEND_MK);
	$(DEP_CC) -MM $(EMEM_CFLAGS) $(EMEM_SRCS) \
		| $(SED_EMEM_DEPEND) >> $(DEPEND_MK)
	@echo "# EOF" >> $(DEPEND_MK);

.PHONY: dep depend

include $(DEPEND_MK)

# eof
