#######################################
# ATDAMD51 Packs Common Make Components #
#######################################
DEVKIT := dfp_atsamd51

VENDOR_UC_FLAGS := -mcpu=cortex-m4 -mthumb -D$(DEV_FLAG)
VENDOR_CFLAGS   += $(VENDOR_UC_FLAGS)
VENDOR_INCLUDES += -I$(LIBROOT)/$(DEVKIT)/include -I$(LIBROOT)/arm-cmsis/include
VENDOR_LDFLAGS  += $(VENDOR_UC_FLAGS) -T$(LIBROOT)/$(DEVKIT)/ldscripts/$(DEV)_flash.ld
