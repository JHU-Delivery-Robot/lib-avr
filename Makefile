LIBROOT := $(shell pwd)
export LIBROOT
export CFLAGS

.PHONY: all
all:
	$(MAKE) -C dfp_samd51
	$(MAKE) -C dfp_samd51_atmel

.PHONY: clean
clean:
	$(MAKE) -C dfp_samd51 $@
	$(MAKE) -C dfp_samd51_atmel $@
