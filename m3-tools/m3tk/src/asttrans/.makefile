# Makefile generated by imake - do not edit!
# $XConsortium: imake.c,v 1.48 89/10/10 18:33:21 jim Exp $

CPU_TYPE = vax

PREFIX = /proj
INSTALL_PREFIX = $(PREFIX)

BIN = ultrix/bin
BIN_USE     = $(PREFIX)/$(BIN)
BIN_INSTALL = $(INSTALL_PREFIX)/$(BIN)

PUB = m3/pub.vax
PUB_USE     = $(PREFIX)/$(PUB)
PUB_INSTALL = $(INSTALL_PREFIX)/$(PUB)

LIB = m3/lib.vax
LIB_USE     = $(PREFIX)/$(LIB)
LIB_INSTALL = $(INSTALL_PREFIX)/$(LIB)

GNUEMACS_INSTALL = $(INSTALL_PREFIX)/generic/lib

MAN = man/src
MAN_USE  = $(PREFIX)/$(MAN)
MAN_INSTALL = $(INSTALL_PREFIX)/$(MAN)

XLIBPATH = /usr/local/lib
XLIB     = -lX11

CC = /contrib/system/bin/gcc

CC_WARNS_FOR_UNKNOWN_FILES = 0

CC_G = @-g@

CC_O = @-O@

KEEP_LIBRARIES_RESOLVED = 1

CFLAGS = -traditional

M3OPT = -g

BOOTOPT = -g

SHELL = /bin/sh

CPP = /lib/cpp

MAKE = make

SEP   = @
PASS0 = @$(LIB_USE)/m3compiler@
PASS1 = @/contrib/system/bin/gcc@-traditional@
PASS2 = @/contrib/system/bin/gcc@-traditional@
PASS3 = @/bin/ar@
PASS4 = @ranlib@
PASS5 = @/bin/ld@-A@
OVERLAY_0 = @-g@
OVERLAY_1 = @-lc@
BASE_ARGS = @-N@

SERVER_LIMIT = 0

DEFPATH = .:$(PUB_USE)

LIBPATH = .:$(LIB_USE):$(XLIBPATH)

LINKBFILES = @-lm@
LINKFILES = @-lm3@-lm@

LINKCOVER  = $(LIB_USE)/report_coverage.o

INCL = $(LIB_USE)

TEMPLATE = toplevel.tmpl.SRC

all:: .pkgs

M3        = $(BIN_USE)/m3

M3FLAGS   = -w1 -make -why
M3DEFPATH =
M3LIBPATH =
DO_M3     = $(M3) $(M3FLAGS) $(M3OPT) $(M3DEFPATH) $(M3LIBPATH)

X11LIBS   = -L$(XLIBPATH) -lXaw -lXmu -lXext -lXt $(XLIB)
M3X11LIBS = -lm3X11R4 $(X11LIBS)
UILIB = -lm3ui -lm3X11R4 $(XLIB)
FORMSVBTLIB = -lm3formsvbt -lm3vbtkit $(UILIB)
ZEUSLIB = -lm3mgkit -lm3mg -lm3zeus -lm3codeview $(FORMSVBTLIB)

.pkgs:: $(M3MAKEFILE) ;\
  @echo "building import links..." ;\
  rm -rf .pkgs ;\
  mkdir .pkgs ;\
  pkgnames="$(PACKAGES)" ;\
  for PKG in $$pkgnames; do (\
     echo "   " $$PKG ;\
     $(LIB_USE)/m3mkpath .pkgs/$$PKG ;\
     rm -f .pkgs/$$PKG ;\
     ln -s  /proj/m3/pkg/$$PKG .pkgs/$$PKG \
  ); done

RSRCFLAGS = -rsrc

DIR0 = ../../m3tk-syn.2/$(TGT)
DIR1 = ../../m3tk-ast.2/$(TGT)
DIR2 = ../../m3tk-gast.2/$(TGT)
DIR3 = ../../m3tk-misc.2/$(TGT)
DIR4 = ../../m3tk-files.2/$(TGT)
DIR5 = ../../m3tk-toolmisc.2/$(TGT)
DIR6 = ../../m3tk-astdisplay.2/$(TGT)
DIR7 = ../../m3oli-lib.2/$(TGT)
DIR8 = ../../m3tk-syn.2/src
DIR9 = ../../m3tk-ast.2/src
DIR10 = ../../m3tk-gast.2/src
DIR11 = ../../m3tk-misc.2/src
DIR12 = ../../m3tk-files.2/src
DIR13 = ../../m3tk-toolmisc.2/src
DIR14 = ../../m3tk-astdisplay.2/src
DIR15 = ../../m3oli-gp.2/src
DIR16 = ../../m3oli-io.2/src
DIR17 = ../../m3oli-fs.2/src
DIR18 = ../../m3oli-os.2/src
DIR19 = ../../m3oli-ux.2/src
DIR20 = ../../m3oli-command.2/src
DIR21 = ../../m3oli-gp.2/$(TGT)
DIR22 = $(M3LIB)
DIR23 = ../../m3tk-sem.2/$(TGT)
DIR24 = ../../m3tk-astpickle.2/$(TGT)
DIR25 = ../../m3tk-sem.2/src
DIR26 = ../../m3tk-astpickle.2/src
DIR27 = /proj/m3/pub.mips

DDIRS = .:$(DIR8):$(DIR9):$(DIR10):$(DIR11):$(DIR12):$(DIR13):$(DIR14):$(DIR15):$(DIR16):$(DIR17):$(DIR18):$(DIR19):$(DIR20):$(DIR25):$(DIR26)
LDIRS = .:$(DIR7)









M3DEFPATH = -D$(DDIRS)

M3LIBPATH = -L$(LDIRS)

scratch:: clean

tidy::
	find . \( -name ",*" -o -name ".,*" -o -name ".emacs_[0-9]*" \
	    -o -name "*~" -o -name core -o -name a.out \) -print | xargs rm -f

clean:: tidy
	find . \( -name "*.o" -o -name "*.io" -o -name "*.ix" \
\
		  -o -name "*.mo" -o -name "*.mx" \) -print | xargs rm -f
	rm -f .makefile .m3path* .PGM_SOURCES .EXPORT* .RSRC_CMD
	rm -f .m3imports*

checkin::     ; vmake -noeval ; vmake -ci < /dev/null
checkout::    ; vmake -co $(PACKAGE) < /dev/null
vestacreate:: ; vmake -co $(PACKAGE).1

FRC:

PGM_SOURCES = \
  ./M3QualNames.i3 \
  ./M3GTool.i3 \
  ./M3CImportASTrans.i3 \
  ./M3ExpandCalls.i3 \
  ./M3QualNames.m3 \
  ./M3GTool.m3 \
  ./M3CImportASTrans.m3 \
  ./M3ExpandCalls.m3
