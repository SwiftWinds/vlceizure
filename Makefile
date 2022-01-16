TARGET := iphone:clang:latest:12.2
INSTALL_TARGET_PROCESSES = 'VLC for iOS'


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = vlceizure

vlceizure_FILES = $(shell find Sources/vlceizure -name '*.swift') $(shell find Sources/vlceizureC -name '*.m' -o -name '*.c' -o -name '*.mm' -o -name '*.cpp')
vlceizure_SWIFTFLAGS = -ISources/vlceizureC/include
vlceizure_CFLAGS = -fobjc-arc -ISources/vlceizureC/include

include $(THEOS_MAKE_PATH)/tweak.mk
