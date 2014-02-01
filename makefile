include theos/makefiles/common.mk

LIBRARY_NAME = TestWeeApp
TestWeeApp_FILES = TestWeeAppController.mm
TestWeeApp_INSTALL_PATH = /System/Library/WeeAppPlugins/TestWeeApp.bundle
TestWeeApp_FRAMEWORKS = UIKit CoreGraphics
TestWeeApp_PRIVATE_FRAMEWORKS = SpringBoardUIServices

include $(THEOS_MAKE_PATH)/library.mk

after-stage::
	mv _/System/Library/WeeAppPlugins/TestWeeApp.bundle/TestWeeApp.dylib _/System/Library/WeeAppPlugins/TestWeeApp.bundle/TestWeeApp

after-install::
	install.exec "killall -9 SpringBoard"
