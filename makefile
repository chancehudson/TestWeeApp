include theos/makefiles/common.mk

BUNDLE_NAME = TestWeeApp
TestWeeApp_FILES = TestWeeAppController.mm
TestWeeApp_INSTALL_PATH = /System/Library/WeeAppPlugins
TestWeeApp_FRAMEWORKS = UIKit CoreGraphics
TestWeeApp_PRIVATE_FRAMEWORKS = SpringBoardUIServices

include $(THEOS_MAKE_PATH)/bundle.mk

after-install::
	install.exec "killall -9 SpringBoard"
