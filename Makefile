before-package::
	python3 abi.py $(THEOS_OBJ_DIR)/arm64e/*.dylib

TARGET := iphone:clang:13.0
PREFIX = $(THEOS)/toolchain/linux/usr/bin/
SYSROOT = $(THEOS)/sdks/iPhoneOS14.5.sdk
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_PACKAGE_SCHEME = rootless
#BasicCarrier_EXTRA_FRAMEWORKS += Alderis
ARCHS = arm64e arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BasicCarrier

BasicCarrier_FILES = $(wildcard *.x)
BasicCarrier_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += basiccarrierprefs
include $(THEOS_MAKE_PATH)/aggregate.mk