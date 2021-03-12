############################
#     AVRLIBC config       #
############################

LIB             := avrlibc
VENDOR_INCLUDES += -I$(LIBROOT)/$(LIB)/include
VENDOR_LDLIBS   += -B$(LIBROOT)/$(LIB)/lib
