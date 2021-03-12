CC      := arm-none-eabi-gcc
AR	:= arm-none-eabi-ar

DEPFLAGS  = -MT $@ -MMD -MP -MF $*.mk
CSTD     := -std=c11
CFLAGS   += -mcpu=cortex-m4 -mthumb -Os -ffunction-sections -fdata-sections -flto
INCLUDES  = -I$(LIBROOT)/arm-cmsis/include -Iinclude

# Base commands
CC.C = $(CC) $(CSTD) $(CFLAGS) $(DEPFLAGS) $(INCLUDES)

SRCDIR  := src
BUILDIR := build
LIBDIR  := lib
objpath = $(addprefix $(2)/,$(addsuffix .o,$(1)))

OBJS_SAMD51G18A := system_samd51g18a startup_samd51g18a
OBJS_SAMD51G19A := system_samd51g19a startup_samd51g19a
OBJS_SAMD51J18A := system_samd51j18a startup_samd51j18a
OBJS_SAMD51J19A := system_samd51j19a startup_samd51j19a
OBJS_SAMD51J20A := system_samd51j20a startup_samd51j20a
OBJS_SAMD51N19A := system_samd51n19a startup_samd51n19a
OBJS_SAMD51N20A := system_samd51n20a startup_samd51n20a
OBJS_SAMD51P19A := system_samd51p19a startup_samd51p19a
OBJS_SAMD51P20A := system_samd51p20a startup_samd51p20a
LIBS := libsamd51g18a.a libsamd51g19a.a libsamd51j18a.a libsamd51j19a.a libsamd51j20a.a libsamd51n19a.a libsamd51n20a.a libsamd51p19a.a libsamd51p20a.a

.PHONY: all
all: $(addprefix $(LIBDIR)/,$(LIBS))

.PHONY: clean
clean:
	rm -rf lib/ build/

$(LIBDIR)/libsamd51g18a.a: $(call objpath,$(OBJS_SAMD51G18A),$(BUILDIR)) | $(LIBDIR)
	 $(AR) rcs $@ $^
$(LIBDIR)/libsamd51g19a.a: $(call objpath,$(OBJS_SAMD51G19A),$(BUILDIR)) | $(LIBDIR)
	 $(AR) rcs $@ $^
$(LIBDIR)/libsamd51j18a.a: $(call objpath,$(OBJS_SAMD51J18A),$(BUILDIR)) | $(LIBDIR)
	 $(AR) rcs $@ $^
$(LIBDIR)/libsamd51j19a.a: $(call objpath,$(OBJS_SAMD51J19A),$(BUILDIR)) | $(LIBDIR)
	 $(AR) rcs $@ $^
$(LIBDIR)/libsamd51j20a.a: $(call objpath,$(OBJS_SAMD51J20A),$(BUILDIR)) | $(LIBDIR)
	 $(AR) rcs $@ $^
$(LIBDIR)/libsamd51n19a.a: $(call objpath,$(OBJS_SAMD51N19A),$(BUILDIR)) | $(LIBDIR)
	 $(AR) rcs $@ $^
$(LIBDIR)/libsamd51n20a.a: $(call objpath,$(OBJS_SAMD51N20A),$(BUILDIR)) | $(LIBDIR)
	 $(AR) rcs $@ $^
$(LIBDIR)/libsamd51p19a.a: $(call objpath,$(OBJS_SAMD51P19A),$(BUILDIR)) | $(LIBDIR)
	 $(AR) rcs $@ $^
$(LIBDIR)/libsamd51p20a.a: $(call objpath,$(OBJS_SAMD51P20A),$(BUILDIR)) | $(LIBDIR)
	 $(AR) rcs $@ $^


$(BUILDIR)/system_samd51g18a.o \
$(BUILDIR)/system_samd51g19a.o \
$(BUILDIR)/system_samd51j18a.o \
$(BUILDIR)/system_samd51j19a.o \
$(BUILDIR)/system_samd51j20a.o \
$(BUILDIR)/system_samd51n19a.o \
$(BUILDIR)/system_samd51n20a.o \
$(BUILDIR)/system_samd51p19a.o \
$(BUILDIR)/system_samd51p20a.o: $(SRCDIR)/system_samd51.c $(BUILDIR)/system_samd51.mk | $(BUILDIR)
	$(CC.C) -D__ATSAMD51G18A__ -o $@ -c $<

$(BUILDIR)/startup_samd51g18a.o \
$(BUILDIR)/startup_samd51g18a.o \
$(BUILDIR)/startup_samd51g19a.o \
$(BUILDIR)/startup_samd51j18a.o \
$(BUILDIR)/startup_samd51j19a.o \
$(BUILDIR)/startup_samd51j20a.o \
$(BUILDIR)/startup_samd51n19a.o \
$(BUILDIR)/startup_samd51n20a.o \
$(BUILDIR)/startup_samd51p19a.o \
$(BUILDIR)/startup_samd51p20a.o: $(SRCDIR)/startup_samd51.c $(BUILDIR)/startup_samd51.mk | $(BUILDIR)
	$(CC.C) -D__ATSAMD51G18A__ -o $@ -c $<



$(BUILDIR):
	@mkdir -p $@
$(LIBDIR):
	@mkdir -p $@
SRC_DEP_FILES  := $(patsubst $(SRCDIR)/%.c,$(BUILDIR)/%.mk,$(wildcard $(SRCDIR)/*.c))
$(SRC_DEP_FILES):
include $(wildcard $(SRC_DEP_FILES))
