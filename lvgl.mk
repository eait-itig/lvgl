LVGL_PATH ?= ${shell pwd}/lvgl
LVGL_BUILD_DEMOS ?= yes
LVGL_BUILD_EXAMPLES ?= yes

ASRCS += $(shell find $(LVGL_PATH)/src -type f -name '*.S')
CSRCS += $(shell find $(LVGL_PATH)/src -type f -name '*.c')
ifeq ($(LVGL_BUILD_DEMOS), yes)
	CSRCS += $(shell find $(LVGL_PATH)/demos -type f -name '*.c')
endif
ifeq ($(LVGL_BUILD_EXAMPLES), yes)
	CSRCS += $(shell find $(LVGL_PATH)/examples -type f -name '*.c')
endif
CXXEXT := .cpp
CXXSRCS += $(shell find $(LVGL_PATH)/src -type f -name '*${CXXEXT}')

AFLAGS += "-I$(LVGL_PATH)"
CFLAGS += "-I$(LVGL_PATH)"
CXXFLAGS += "-I$(LVGL_PATH)"
