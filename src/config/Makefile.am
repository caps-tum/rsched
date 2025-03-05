BUILT_SOURCES = src/config/bison.h
AM_YFLAGS = -d
AM_CPPFLAGS += -I$(top_builddir)/src/config

bin_PROGRAMS += parser

parser_SOURCES = src/config/bison.y \
                 src/config/flex.l
