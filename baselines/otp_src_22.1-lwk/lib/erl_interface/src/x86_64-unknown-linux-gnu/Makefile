#
# %CopyrightBegin%
#
# Copyright Ericsson AB 1997-2018. All Rights Reserved.
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

###########################################################################
##
##  This is a standalone make file for erl_interface. It is
##  to be preprocessed by the configure script and the result
##  is saved into the TARGER directory.
##
##  We use 'vpath' to use plain C file names without the directory
##  part in dependency rules.
##
###########################################################################

.PHONY : debug opt release clean distclean depend

include $(ERL_TOP)/make/target.mk

# ----------------------------------------------------
# Application version and release dir specification
# ----------------------------------------------------
include ../vsn.mk
include $(ERL_TOP)/make/target.mk
include $(TARGET)/eidefs.mk

include $(ERL_TOP)/make/output.mk

EBINDIR=../ebin

APP_FILE= erl_interface.app
APP_SRC= $(APP_FILE).src
APP_TARGET= $(EBINDIR)/$(APP_FILE)

APPUP_FILE= erl_interface.appup
APPUP_SRC= $(APPUP_FILE).src
APPUP_TARGET= $(EBINDIR)/$(APPUP_FILE)

USING_MINGW=no
USING_MSYS_VC==no
USING_CYGWIN_VC==no
USING_VC=no

ifdef TESTROOT
RELEASE_PATH=$(TESTROOT)
else
RELEASE_PATH=$(ERL_TOP)/release/$(TARGET)
endif
RELSYSDIR = $(RELEASE_PATH)/lib/erl_interface-$(EI_VSN)

LDFLAGS = 
LIBS = 

ifeq ($(TYPE),debug)
PURIFY =
TYPEMARKER = .debug
TYPE_FLAGS = -g -DDEBUG
ifeq ($(TARGET),win32)
LDFLAGS += -g
endif
else
ifeq ($(TYPE),purify)
PURIFY = purify
TYPEMARKER = .purify
TYPE_FLAGS = -DPURIFY -DNO_JUMP_TABLE
else
ifeq ($(TYPE),quantify)
PURIFY = quantify
TYPEMARKER = .quantify
TYPE_FLAGS = -g -O2 -DQUANTIFY
else
ifeq ($(TYPE),purecov)
PURIFY = purecov --follow-child-processes=yes
TYPEMARKER = .purecov
TYPE_FLAGS = -g -DPURECOV -DNO_JUMP_TABLE
else
ifeq ($(TYPE),gcov)
PURIFY =
TYPEMARKER =
TYPE_FLAGS = -DNO_JUMP_TABLE -fprofile-arcs -ftest-coverage
ifeq ($(TARGET),linux)
LIBS += -lgcov
endif
else
PURIFY =
TYPEMARKER =
TYPE_FLAGS =
endif
endif
endif
endif
endif

CC = icc
LD = ld
AR = ar
RANLIB = ranlib

ifeq ($(V),0)
AR_FLAGS=rc
else
AR_FLAGS=rcv
endif

INCFLAGS = -I. -I../include -Iconnect -Iencode -Idecode -Imisc -Iepmd \
	-Iregistry -I$(TARGET) 

ifeq ($(USING_VC),yes)
WARNFLAGS = -Wall
else
WARNFLAGS = -Wall -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wnested-externs -Winline -fno-strict-aliasing
endif

WARNFLAGS += -DEI_NO_DEPR_WARN

CFLAGS = -Werror=return-type  -g -O2 -DEI_64BIT -fPIC $(WARNFLAGS) $(INCFLAGS) $(TYPE_FLAGS)
PROG_CFLAGS = -Werror=return-type  -g -O2 -DEI_64BIT $(WARNFLAGS) $(INCFLAGS) $(TYPE_FLAGS) -Ilegacy

ifeq ($(findstring vxworks,$(TARGET)),vxworks)
PROG_CFLAGS += -nostartfiles -Wl,-r,-d
endif


INSTALL = /usr/bin/install -c
INSTALL_DIR = /usr/bin/install -c -d
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}

# The default library (no extra extension in name) is for Unix with
# thread support if exists.  For windows MD is the default.
#
#   ST  = single threaded (Unix without thread support)
#   MT  = multi threaded (on windows also static linking)
#   MD  = multithreaded dynamic (default for cygwin cc wrapper)
#   MDD = multithreaded dynamic with debug symbols
#
ST_OBJDIR  = $(ERL_TOP)/lib/erl_interface/obj.st$(TYPEMARKER)/$(TARGET)
MT_OBJDIR  = $(ERL_TOP)/lib/erl_interface/obj.mt$(TYPEMARKER)/$(TARGET)
MD_OBJDIR  = $(ERL_TOP)/lib/erl_interface/obj.md$(TYPEMARKER)/$(TARGET)
MDD_OBJDIR = $(ERL_TOP)/lib/erl_interface/obj.mdd$(TYPEMARKER)/$(TARGET)
OBJDIR     = $(ERL_TOP)/lib/erl_interface/obj$(TYPEMARKER)/$(TARGET)
BINDIR     = $(ERL_TOP)/lib/erl_interface/bin/$(TARGET)

# FIXME maybe use this opt and remove (int) cast to is*() functions
# -Wno-char-subscripts
# -Wshadow

vpath %.c connect:encode:decode:misc:epmd:legacy:registry

###########################################################################
#  List targets
###########################################################################

ifeq ($(TARGET),win32)
EXE=.exe
else
EXE=
endif

ifeq ($(USING_VC),yes)
LIBEXT=.lib
LIBPRE=
MTFLAG=-MT

else
LIBEXT=.a
LIBPRE=lib
MTFLAG=

endif

###########################################################################
#  Specify targets names
###########################################################################

ERL_CALL   = $(BINDIR)/erl_call$(EXE)

ifdef THR_DEFS
ST_EILIB   = $(OBJDIR)/$(LIBPRE)ei_st$(LIBEXT)
ST_ERLLIB  = $(OBJDIR)/$(LIBPRE)erl_interface_st$(LIBEXT)
MT_EILIB   = $(OBJDIR)/$(LIBPRE)ei$(LIBEXT)
MT_ERLLIB  = $(OBJDIR)/$(LIBPRE)erl_interface$(LIBEXT)
else
ST_EILIB   = $(OBJDIR)/$(LIBPRE)ei$(LIBEXT)
ST_ERLLIB  = $(OBJDIR)/$(LIBPRE)erl_interface$(LIBEXT)
endif
MD_EILIB   = $(OBJDIR)/$(LIBPRE)ei_md$(LIBEXT)
MDD_EILIB  = $(OBJDIR)/$(LIBPRE)ei_mdd$(LIBEXT)
MD_ERLLIB  = $(OBJDIR)/$(LIBPRE)erl_interface_md$(LIBEXT)
MDD_ERLLIB = $(OBJDIR)/$(LIBPRE)erl_interface_mdd$(LIBEXT)

###########################################################################
#  Specify targets to build
###########################################################################

EXE_TARGETS = \
	$(ERL_CALL)

ifeq ($(USING_VC),yes)

# Windows targets

TARGETS = \
	$(OBJ_TARGETS) \
	$(EXE_TARGETS) \
	$(APP_TARGET)  \
	$(APPUP_TARGET)

OBJ_TARGETS = \
	$(MT_EILIB) \
	$(MD_EILIB) \
	$(MDD_EILIB) \
	$(MT_ERLLIB) \
	$(MD_ERLLIB) \
	$(MDD_ERLLIB)

FAKE_TARGETS = \
	$(OBJDIR)/erl_fake_prog_mt$(EXE) \
	$(OBJDIR)/ei_fake_prog_mt$(EXE) \
	$(OBJDIR)/erl_fake_prog_mt_cxx$(EXE) \
	$(OBJDIR)/ei_fake_prog_mt_cxx$(EXE) \
	$(OBJDIR)/erl_fake_prog_md$(EXE) \
	$(OBJDIR)/ei_fake_prog_md$(EXE) \
	$(OBJDIR)/erl_fake_prog_cxx_md$(EXE) \
	$(OBJDIR)/ei_fake_prog_cxx_md$(EXE) \
	$(OBJDIR)/erl_fake_prog_mdd$(EXE) \
	$(OBJDIR)/ei_fake_prog_mdd$(EXE) \
	$(OBJDIR)/erl_fake_prog_cxx_mdd$(EXE) \
	$(OBJDIR)/ei_fake_prog_cxx_mdd$(EXE) \

else

ifeq ($USING_MINGW,yes)
TARGETS = \
	$(OBJ_TARGETS) \
	$(EXE_TARGETS) \
	$(APP_TARGET)  \
	$(APPUP_TARGET)

OBJ_TARGETS = \
	$(MD_EILIB) \
	$(MD_ERLLIB)

FAKE_TARGETS = \
	$(OBJDIR)/erl_fake_prog_md$(EXE) \
	$(OBJDIR)/ei_fake_prog_md$(EXE) \
	$(OBJDIR)/erl_fake_prog_cxx_md$(EXE) \
	$(OBJDIR)/ei_fake_prog_cxx_md$(EXE) 
else
# Unix targets

ifdef THR_DEFS

TARGETS = \
	$(OBJ_TARGETS) \
	$(EXE_TARGETS) \
	$(APP_TARGET)  \
	$(APPUP_TARGET)

OBJ_TARGETS = \
	$(ST_EILIB) \
	$(ST_ERLLIB) \
	$(MT_EILIB) \
	$(MT_ERLLIB)

FAKE_TARGETS = \
	$(ST_OBJDIR)/erl_fake_prog_st$(EXE) \
	$(ST_OBJDIR)/ei_fake_prog_st$(EXE) \
	$(ST_OBJDIR)/erl_fake_prog_cxx_st$(EXE) \
	$(ST_OBJDIR)/ei_fake_prog_cxx_st$(EXE) \
	$(MT_OBJDIR)/erl_fake_prog_mt$(EXE) \
	$(MT_OBJDIR)/ei_fake_prog_mt$(EXE) \
	$(MT_OBJDIR)/erl_fake_prog_mt_cxx$(EXE) \
	$(MT_OBJDIR)/ei_fake_prog_mt_cxx$(EXE)

else

TARGETS = \
	$(OBJ_TARGETS) \
	$(EXE_TARGETS) \
	$(APP_TARGET)  \
	$(APPUP_TARGET)

OBJ_TARGETS = \
	$(ST_EILIB) \
	$(ST_ERLLIB)

FAKE_TARGETS = \
	$(ST_OBJDIR)/erl_fake_prog_st$(EXE) \
	$(ST_OBJDIR)/ei_fake_prog_st$(EXE) \
	$(ST_OBJDIR)/erl_fake_prog_cxx_st$(EXE) \
	$(ST_OBJDIR)/ei_fake_prog_cxx_st$(EXE)

endif

endif

endif
###########################################################################
#  List all source files
###########################################################################

# FIXME do we need dummy here for XX.h that was needed before??

HEADERS = \
	../include/ei.h \
	../include/ei_connect.h \
	../include/eicode.h \
	../include/erl_interface.h

EISOURCES = \
	$(CONNECTSRC) \
	$(DECODESRC) \
	$(ENCODESRC) \
	$(EPMDSRC) \
	$(MISCSRC) \
	$(REGISTRYSRC)

CONNECTSRC = \
	connect/ei_connect.c \
	connect/ei_resolve.c \
	connect/eirecv.c \
	connect/send.c \
	connect/send_exit.c \
	connect/send_reg.c

DECODESRC = \
	decode/decode_atom.c \
	decode/decode_big.c \
	decode/decode_bignum.c \
	decode/decode_binary.c \
	decode/decode_boolean.c \
	decode/decode_char.c \
	decode/decode_double.c \
	decode/decode_fun.c \
	decode/decode_intlist.c \
	decode/decode_list_header.c \
	decode/decode_long.c \
	decode/decode_pid.c \
	decode/decode_port.c \
	decode/decode_ref.c \
	decode/decode_skip.c \
	decode/decode_string.c \
	decode/decode_trace.c \
	decode/decode_tuple_header.c \
	decode/decode_ulong.c \
	decode/decode_version.c \
	$(DECODESRC_LONGLONG)

ifneq ($(findstring vxworks,$(TARGET)),vxworks)
DECODESRC_LONGLONG = \
	decode/decode_longlong.c \
	decode/decode_ulonglong.c
else
DECODESRC_LONGLONG =
endif


ENCODESRC = \
	encode/encode_atom.c \
	encode/encode_big.c \
	encode/encode_bignum.c \
	encode/encode_binary.c \
	encode/encode_boolean.c \
	encode/encode_char.c \
	encode/encode_double.c \
	encode/encode_fun.c \
	encode/encode_list_header.c \
	encode/encode_long.c \
	encode/encode_pid.c \
	encode/encode_port.c \
	encode/encode_ref.c \
	encode/encode_string.c \
	encode/encode_trace.c \
	encode/encode_tuple_header.c \
	encode/encode_ulong.c \
	encode/encode_version.c \
	$(ENCODESRC_LONGLONG)

ifneq ($(findstring vxworks,$(TARGET)),vxworks)
ENCODESRC_LONGLONG = \
	encode/encode_longlong.c \
	encode/encode_ulonglong.c
else
ENCODESRC_LONGLONG =
endif


EPMDSRC = \
	epmd/epmd_port.c \
	epmd/epmd_publish.c \
	epmd/epmd_unpublish.c

MISCSRC = \
	misc/ei_decode_term.c \
	misc/ei_format.c \
	misc/ei_locking.c \
	misc/ei_malloc.c \
	misc/ei_portio.c \
	misc/ei_printterm.c \
	misc/ei_pthreads.c \
	misc/ei_trace.c \
	misc/ei_x_encode.c \
	misc/eimd5.c \
	misc/get_type.c \
	misc/show_msg.c \
	misc/ei_compat.c \
	misc/ei_init.c

REGISTRYSRC = \
	registry/hash_dohash.c \
	registry/hash_foreach.c \
	registry/hash_freetab.c \
	registry/hash_insert.c \
	registry/hash_isprime.c \
	registry/hash_lookup.c \
	registry/hash_newtab.c \
	registry/hash_remove.c \
	registry/hash_resize.c \
	registry/hash_rlookup.c \
	registry/reg_close.c \
	registry/reg_delete.c \
	registry/reg_dirty.c \
	registry/reg_dump.c \
	registry/reg_free.c \
	registry/reg_get.c \
	registry/reg_getf.c \
	registry/reg_geti.c \
	registry/reg_getp.c \
	registry/reg_gets.c \
	registry/reg_make.c \
	registry/reg_open.c \
	registry/reg_purge.c \
	registry/reg_resize.c \
	registry/reg_restore.c \
	registry/reg_set.c \
	registry/reg_setf.c \
	registry/reg_seti.c \
	registry/reg_setp.c \
	registry/reg_sets.c \
	registry/reg_stat.c \
	registry/reg_tabstat.c

ERLSOURCES = \
	legacy/decode_term.c \
	legacy/encode_term.c \
	legacy/erl_connect.c \
	legacy/erl_error.c \
	legacy/erl_eterm.c \
	legacy/erl_fix_alloc.c \
	legacy/erl_format.c \
	legacy/erl_malloc.c \
	legacy/erl_marshal.c \
	legacy/erl_resolve.c \
	legacy/erl_timeout.c \
	legacy/global_names.c \
	legacy/global_register.c \
	legacy/global_unregister.c \
	legacy/global_whereis.c

SOURCES = $(EISOURCES) $(ERLSOURCES)

NEVERUSED = \
	whereis.c \
	ei_send.c \
	ei_send_reg.c \
	send_link.c

ERLCALL = \
	prog/erl_call.c \
	prog/erl_start.c


# Note that encode/decode_term.c defines ei functions that is
# located in the erl_interface library, not ei library.

ST_EIOBJECTS  = $(addprefix $(ST_OBJDIR)/,$(notdir $(EISOURCES:.c=.o)))
ST_ERLOBJECTS = $(addprefix $(ST_OBJDIR)/,$(notdir $(ERLSOURCES:.c=.o)))
MT_EIOBJECTS  = $(addprefix $(MT_OBJDIR)/,$(notdir $(EISOURCES:.c=.o)))
MT_ERLOBJECTS = $(addprefix $(MT_OBJDIR)/,$(notdir $(ERLSOURCES:.c=.o)))
MD_EIOBJECTS  = $(addprefix $(MD_OBJDIR)/,$(notdir $(EISOURCES:.c=.o)))
MD_ERLOBJECTS = $(addprefix $(MD_OBJDIR)/,$(notdir $(ERLSOURCES:.c=.o)))
MDD_EIOBJECTS  = $(addprefix $(MDD_OBJDIR)/,$(notdir $(EISOURCES:.c=.o)))
MDD_ERLOBJECTS = $(addprefix $(MDD_OBJDIR)/,$(notdir $(ERLSOURCES:.c=.o)))

###########################################################################
#  Main targets
###########################################################################

# FIXME this assumes execution order
# FIXME move up and add exe prefix if needed....

debug opt: $(TARGETS)

docs:

tests:

clean:
	rm -f $(ST_EIOBJECTS)  $(ST_ERLOBJECTS)  $(ST_EILIB)  $(ST_ERLLIB)
	rm -f $(MT_EIOBJECTS)  $(MT_ERLOBJECTS)  $(MT_EILIB)  $(MT_ERLLIB)
	rm -f $(MD_EIOBJECTS)  $(MD_ERLOBJECTS)  $(MD_EILIB)  $(MD_ERLLIB)
	rm -f $(MDD_EIOBJECTS) $(MDD_ERLOBJECTS) $(MDD_EILIB) $(MDD_ERLLIB)
	rm -f $(ERL_CALL)
	rm -f $(FAKE_TARGETS)
	rm -f $(APP_TARGET)
	rm -f $(APPUP_TARGET)

distclean: clean
	rm -f config.h config.log config.status configure


###########################################################################
#  FIXME move this VxWorks stuff to configure or something
###########################################################################

# FIXME depend on $(TARGET)/Makefile ???

ifeq ($(findstring vxworks,$(TARGET)),vxworks)
$(TARGET)/config.h:
	$(gen_verbose)
	$(V_at)echo "/* Generated by Makefile */" > $@
	$(V_at)echo "#define HAVE_STRERROR 1" >> $@
	$(V_at)echo "#define HAVE_SOCKLEN_T 1" >> $@
endif

###########################################################################
#  Default rules, normal and threaded
###########################################################################

$(ST_OBJDIR)/%.o: %.c
	$(V_CC) $(CFLAGS) -c $< -o $@

$(MT_OBJDIR)/%.o: %.c
	$(V_CC) $(MTFLAG) $(CFLAGS) $(THR_DEFS) -c $< -o $@

$(MD_OBJDIR)/%.o: %.c
	$(V_CC) -MD $(CFLAGS) $(THR_DEFS) -c $< -o $@

$(MD_OBJDIR)/%.o: %.c
	$(V_CC) -MD $(CFLAGS) $(THR_DEFS) -c $< -o $@

$(MDD_OBJDIR)/%.o: %.c
	$(V_CC) -MDd $(CFLAGS) $(THR_DEFS) -c $< -o $@

###########################################################################
#  Create directories
###########################################################################

_create_dirs := $(shell mkdir -p $(EBINDIR) $(BINDIR) $(OBJDIR) $(ST_OBJDIR) $(MT_OBJDIR) $(MD_OBJDIR) $(MDD_OBJDIR))

###########################################################################
#  Special rules
###########################################################################

$(APP_TARGET): $(APP_SRC) ../vsn.mk
	$(vsn_verbose)sed -e 's;%VSN%;$(ERL_INTERFACE_VSN);' $< > $@
$(APPUP_TARGET): $(APPUP_SRC) ../vsn.mk
	$(vsn_verbose)sed -e 's;%VSN%;$(ERL_INTERFACE_VSN);' $< > $@

ifeq ($(TARGET),win32)

# Windows archive creation

$(ST_EILIB) : $(ST_EIOBJECTS)
	$(V_AR) -out:$@ $(ST_EIOBJECTS)
	$(V_RANLIB) $@

$(ST_ERLLIB) : $(ST_ERLOBJECTS)
	$(V_AR) -out:$@ $(ST_ERLOBJECTS)
	$(V_RANLIB) $@

$(MT_EILIB) : $(MT_EIOBJECTS)
	$(V_AR) -out:$@ $(MT_EIOBJECTS)
	$(V_RANLIB) $@

$(MT_ERLLIB) : $(MT_ERLOBJECTS)
	$(V_AR) -out:$@ $(MT_ERLOBJECTS)
	$(V_RANLIB) $@

$(MD_EILIB) : $(MD_EIOBJECTS)
	$(V_AR) -out:$@ $(MD_EIOBJECTS)
	$(V_RANLIB) $@

$(MD_ERLLIB) : $(MD_ERLOBJECTS)
	$(V_AR) -out:$@ $(MD_ERLOBJECTS)
	$(V_RANLIB) $@

$(MDD_EILIB) : $(MDD_EIOBJECTS)
	$(V_AR) -out:$@ $(MDD_EIOBJECTS)
	$(V_RANLIB) $@

$(MDD_ERLLIB) : $(MDD_ERLOBJECTS)
	$(V_AR) -out:$@ $(MDD_ERLOBJECTS)
	$(V_RANLIB) $@

else

# Unix archive creation

$(ST_EILIB) : $(ST_EIOBJECTS)
	$(V_at)rm -f $@
	$(V_AR) $(AR_FLAGS) $@ $(ST_EIOBJECTS)
ifdef RANLIB
	$(V_RANLIB) $@
endif

$(ST_ERLLIB) : $(ST_ERLOBJECTS)
	$(V_at)rm -f $@
	$(V_AR) $(AR_FLAGS) $@ $(ST_ERLOBJECTS)
ifdef RANLIB
	$(V_RANLIB) $@
endif

$(MT_EILIB) : $(MT_EIOBJECTS)
	$(V_at)rm -f $@
	$(V_AR) $(AR_FLAGS) $@ $(MT_EIOBJECTS)
ifdef RANLIB
	$(V_RANLIB) $@
endif

$(MT_ERLLIB) : $(MT_ERLOBJECTS)
	$(V_at)rm -f $@
	$(V_AR) $(AR_FLAGS) $@ $(MT_ERLOBJECTS)
ifdef RANLIB
	$(V_RANLIB) $@
endif

endif

###########################################################################
#  erl_call   FIXME how to avoid explicit -lsocket on winows??? 
###########################################################################

ifeq ($(TARGET),win32)
$(ERL_CALL): $(ERLCALL) ../include/ei.h $(MD_EILIB)
	$(ld_verbose)$(PURIFY) $(CC) -MD $(PROG_CFLAGS) $(THR_DEFS) -o $@ $(ERLCALL) \
		-L$(OBJDIR) -lei_md $(THR_LIBS) $(LIBS) -lsocket
else
ifeq ($(findstring vxworks,$(TARGET)),vxworks)
$(ERL_CALL): $(ST_OBJDIR)/erl_call.o $(ST_OBJDIR)/erl_start.o ../include/ei.h $(ST_EILIB)
	$(V_LD) -r -d -o $@ $(ST_OBJDIR)/erl_call.o $(ST_OBJDIR)/erl_start.o -L$(OBJDIR) -lei $(LIBS)

$(ST_OBJDIR)/erl_call.o: prog/erl_call.c
	$(V_CC) $(CFLAGS) -c $< -o $@

$(ST_OBJDIR)/erl_start.o: prog/erl_start.c
	$(V_CC) $(CFLAGS) -c $< -o $@

else
ifdef THR_DEFS
$(ERL_CALL): $(ERLCALL) ../include/ei.h $(MT_EILIB)
	$(ld_verbose)$(PURIFY) $(CC) $(PROG_CFLAGS) $(THR_DEFS) $(LDFLAGS) -o $@ $(ERLCALL) \
		-L$(OBJDIR) -lei $(THR_LIBS) $(LIBS)
else
$(ERL_CALL): $(ERLCALL) ../include/ei.h $(ST_EILIB)
	$(ld_verbose)$(PURIFY) $(CC) $(PROG_CFLAGS) $(LDFLAGS) -o $@ $(ERLCALL) \
		-L$(OBJDIR) -lei $(LIBS)
endif
endif
endif

###########################################################################
#  Fake application targets used to test header files and linking
###########################################################################

check: $(FAKE_TARGETS)

ifndef THR_DEFS
$(ST_OBJDIR)/erl_fake_prog_st$(EXE): prog/erl_fake_prog.c $(ST_ERLLIB) $(ST_EILIB)
	$(V_CC) $(PROG_CFLAGS) -o $@ $< -L$(OBJDIR) -lerl_interface -lei \
		$(LIBS)

$(ST_OBJDIR)/ei_fake_prog_st$(EXE): prog/ei_fake_prog.c $(ST_EILIB)
	$(V_CC) $(PROG_CFLAGS) -o $@ $< -L$(OBJDIR) -lei $(LIBS)

$(ST_OBJDIR)/erl_fake_prog_cxx_st$(EXE): prog/erl_fake_prog.c \
		$(ST_ERLLIB) $(ST_EILIB)
	$(V_CC) $(PROG_CFLAGS) -o $@ -xc++ $< -L$(OBJDIR) \
		-lerl_interface -lei $(LIBS)

$(ST_OBJDIR)/ei_fake_prog_cxx_st$(EXE): prog/ei_fake_prog.c $(ST_EILIB)
	$(V_CC) $(PROG_CFLAGS) -o $@ -xc++ $< -L$(OBJDIR) -lei $(LIBS)

else

$(ST_OBJDIR)/erl_fake_prog_st$(EXE): prog/erl_fake_prog.c $(ST_ERLLIB) $(ST_EILIB)
	$(V_CC) $(PROG_CFLAGS) -o $@ $< -L$(OBJDIR) -lerl_interface_st -lei_st \
		$(LIBS)

$(ST_OBJDIR)/ei_fake_prog_st$(EXE): prog/ei_fake_prog.c $(ST_EILIB)
	$(V_CC) $(PROG_CFLAGS) -o $@ $< -L$(OBJDIR) -lei_st $(LIBS)

$(ST_OBJDIR)/erl_fake_prog_cxx_st$(EXE): prog/erl_fake_prog.c \
		$(ST_ERLLIB) $(ST_EILIB)
	$(V_CC) $(PROG_CFLAGS) -o $@ -xc++ $< -L$(OBJDIR) \
		-lerl_interface_st -lei_st $(LIBS)

$(ST_OBJDIR)/ei_fake_prog_cxx_st$(EXE): prog/ei_fake_prog.c $(ST_EILIB)
	$(V_CC) $(PROG_CFLAGS) -o $@ -xc++ $< -L$(OBJDIR) -lei_st $(LIBS)

endif

####

$(MT_OBJDIR)/erl_fake_prog_mt$(EXE): prog/erl_fake_prog.c \
		$(MT_ERLLIB) $(MT_EILIB)
	$(V_CC) $(MTFLAG) $(PROG_CFLAGS) $(THR_DEFS) -o $@ $< -L$(OBJDIR) \
		-lerl_interface -lei $(THR_LIBS) $(LIBS)

$(MT_OBJDIR)/ei_fake_prog_mt$(EXE): prog/ei_fake_prog.c $(MT_EILIB)
	$(V_CC) $(MTFLAG) $(PROG_CFLAGS) $(THR_DEFS) -o $@ $< \
		-L$(OBJDIR) -lei $(THR_LIBS) $(LIBS)

$(MT_OBJDIR)/erl_fake_prog_mt_cxx$(EXE): prog/erl_fake_prog.c \
		$(MT_ERLLIB) $(MT_EILIB)
	$(V_CC) $(MTFLAG) $(PROG_CFLAGS) $(THR_DEFS) -o $@ -xc++ $< \
		-L$(OBJDIR) -lerl_interface -lei \
		$(THR_LIBS) $(LIBS)

$(MT_OBJDIR)/ei_fake_prog_mt_cxx$(EXE): prog/ei_fake_prog.c $(MT_EILIB)
	$(V_CC) $(MTFLAG) $(PROG_CFLAGS) $(THR_DEFS) -o $@ -xc++ $< \
		-L$(OBJDIR) -lei $(THR_LIBS) $(LIBS)

####

$(MD_OBJDIR)/erl_fake_prog_md$(EXE): prog/erl_fake_prog.c \
		$(MD_ERLLIB) $(MD_EILIB)
	$(V_CC) -MD $(PROG_CFLAGS) $(THR_DEFS) -o $@ $< -L$(OBJDIR) \
		-lerl_interface_r -lei_r $(THR_LIBS) $(LIBS)

$(MD_OBJDIR)/ei_fake_prog_md$(EXE): prog/ei_fake_prog.c $(MD_EILIB)
	$(V_CC) -MD $(PROG_CFLAGS) $(THR_DEFS) -o $@ $< \
		-L$(OBJDIR) -lei_r $(THR_LIBS) $(LIBS)

$(MD_OBJDIR)/erl_fake_prog_md_cxx$(EXE): prog/erl_fake_prog.c \
		$(MD_ERLLIB) $(MD_EILIB)
	$(V_CC) -MD $(PROG_CFLAGS) $(THR_DEFS) -o $@ -xc++ $< \
		-L$(OBJDIR) -lerl_interface_r -lei_r \
		$(THR_LIBS) $(LIBS)

$(MD_OBJDIR)/ei_fake_prog_md_cxx$(EXE): prog/ei_fake_prog.c $(MD_EILIB)
	$(V_CC) -MD $(PROG_CFLAGS) $(THR_DEFS) -o $@ -xc++ $< \
		-L$(OBJDIR) -lei_r $(THR_LIBS) $(LIBS)

####

$(MDD_OBJDIR)/erl_fake_prog_mdd$(EXE): prog/erl_fake_prog.c \
		$(MDD_ERLLIB) $(MDD_EILIB)
	$(V_CC) -MDD $(PROG_CFLAGS) $(THR_DEFS) -o $@ $< -L$(OBJDIR) \
		-lerl_interface_r -lei_r $(THR_LIBS) $(LIBS)

$(MDD_OBJDIR)/ei_fake_prog_mdd$(EXE): prog/ei_fake_prog.c $(MDD_EILIB)
	$(V_CC) -MDD $(PROG_CFLAGS) $(THR_DEFS) -o $@ $< \
		-L$(OBJDIR) -lei_r $(THR_LIBS) $(LIBS)

$(MDD_OBJDIR)/erl_fake_prog_mdd_cxx$(EXE): prog/erl_fake_prog.c \
		$(MDD_ERLLIB) $(MDD_EILIB)
	$(V_CC) -MDD $(PROG_CFLAGS) $(THR_DEFS) -o $@ -xc++ $< \
		-L$(OBJDIR) -lerl_interface_r -lei_r \
		$(THR_LIBS) $(LIBS)

$(MDD_OBJDIR)/ei_fake_prog_mdd_cxx$(EXE): prog/ei_fake_prog.c $(MDD_EILIB)
	$(V_CC) -MDD $(PROG_CFLAGS) $(THR_DEFS) -o $@ -xc++ $< \
		-L$(OBJDIR) -lei_r $(THR_LIBS) $(LIBS)

###########################################################################
#  Create dependency file using gcc -MM
###########################################################################

depend: $(TARGET)/depend.mk

$(TARGET)/depend.mk: $(TARGET)/config.h
	$(gen_verbose)
	$(V_colon)echo "Generating dependency file depend.mk..."
	@echo "# Generated dependency rules" > $@
	$(V_CC) $(CFLAGS) -MM $(SOURCES) | 				\
		sed 's&$(TARGET)&\$$\(TARGET\)&g' |			\
		sed 's/^.*:/\$$\(ST_OBJDIR\)\/&/' >> $@
	@echo >> $@
	$(V_CC) $(CFLAGS) -MM $(SOURCES) | 				\
		sed 's&$(TARGET)&\$$\(TARGET\)&g' |			\
		sed 's/^.*:/\$$\(MT_OBJDIR\)\/&/' >> $@
	@echo >> $@
	$(V_CC) $(CFLAGS) -MM $(SOURCES) |				\
		sed 's&$(TARGET)&\$$\(TARGET\)&g' |			\
		sed 's/^.*:/\$$\(MD_OBJDIR\)\/&/' >> $@
	@echo >> $@
	$(V_CC) $(CFLAGS) -MM $(SOURCES) |				\
		sed 's&$(TARGET)&\$$\(TARGET\)&g' |			\
		sed 's/^.*:/\$$\(MDD_OBJDIR\)\/&/' >> $@
	@echo >> $@

# For some reason this has to be after 'opt' target
-include $(TARGET)/depend.mk

# ----------------------------------------------------
# Release Target
# ---------------------------------------------------- 

EXTRA = \
	INSTALL \
	Makefile \
	Makefile.in \
	README \
	README.internal \
	$(TARGET)/eidefs.mk

release: opt
	$(INSTALL_DIR) "$(RELSYSDIR)/include"
	$(INSTALL_DIR) "$(RELSYSDIR)/lib"
	$(INSTALL_DIR) "$(RELSYSDIR)/bin"
	$(INSTALL_DIR) "$(RELSYSDIR)/ebin"
	$(INSTALL_DIR) "$(RELSYSDIR)/src/auxdir"
	$(INSTALL_DIR) "$(RELSYSDIR)/src/connect"
	$(INSTALL_DIR) "$(RELSYSDIR)/src/decode"
	$(INSTALL_DIR) "$(RELSYSDIR)/src/encode"
	$(INSTALL_DIR) "$(RELSYSDIR)/src/epmd"
	$(INSTALL_DIR) "$(RELSYSDIR)/src/legacy"
	$(INSTALL_DIR) "$(RELSYSDIR)/src/misc"
	$(INSTALL_DIR) "$(RELSYSDIR)/src/prog"
	$(INSTALL_DIR) "$(RELSYSDIR)/src/registry"
	$(INSTALL_DIR) "$(RELEASE_PATH)/usr/include"
	$(INSTALL_DIR) "$(RELEASE_PATH)/usr/lib"
	$(INSTALL_DATA) $(APP_TARGET)  "$(RELSYSDIR)/ebin/$(APP_FILE)"
	$(INSTALL_DATA) $(APPUP_TARGET)  "$(RELSYSDIR)/ebin/$(APPUP_FILE)"
	$(INSTALL_DATA) $(HEADERS)     "$(RELSYSDIR)/include"
	$(INSTALL_DATA) $(HEADERS)     "$(RELEASE_PATH)/usr/include"
	$(INSTALL_DATA) $(OBJ_TARGETS) "$(RELSYSDIR)/lib"
	$(INSTALL_DATA) $(OBJ_TARGETS) "$(RELEASE_PATH)/usr/lib"
ifneq ($(EXE_TARGETS),)
	$(INSTALL_PROGRAM) $(EXE_TARGETS) "$(RELSYSDIR)/bin"
endif
	$(INSTALL_DATA) $(EXTRA)        "$(RELSYSDIR)/src"
	$(INSTALL_DATA) connect/*.[ch]  "$(RELSYSDIR)/src/connect"
	$(INSTALL_DATA) decode/*.[ch]   "$(RELSYSDIR)/src/decode"
	$(INSTALL_DATA) encode/*.[ch]   "$(RELSYSDIR)/src/encode"
	$(INSTALL_DATA) epmd/*.[ch]     "$(RELSYSDIR)/src/epmd"
	$(INSTALL_DATA) misc/*.[ch]     "$(RELSYSDIR)/src/misc"
	$(INSTALL_DATA) registry/*.[ch] "$(RELSYSDIR)/src/registry"
	$(INSTALL_DATA) legacy/*.[ch]   "$(RELSYSDIR)/src/legacy"
	$(INSTALL_DATA) prog/*.[ch]     "$(RELSYSDIR)/src/prog"

release_docs:

release_tests:

xmllint:
