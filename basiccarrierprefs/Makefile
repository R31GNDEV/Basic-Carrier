TARGET := iphone:clang:14.5:12.0
THEOS_PACKAGE_SCHEME = rootless

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = basiccarrierprefs

basiccarrierprefs_FILES = $(wildcard *.m)
basiccarrierprefs_FRAMEWORKS = UIKit
basiccarrierprefs_PRIVATE_FRAMEWORKS = Preferences
basiccarrierprefs_INSTALL_PATH = /Library/PreferenceBundles
basiccarrierprefs_CFLAGS = -fobjc-arc
basiccarrierprefs_LIBRARIES = colorpicker
#basiccarrierprefs_EXTRA_FRAMEWORKS = Alderis

include $(THEOS_MAKE_PATH)/bundle.mk
