#############################################################################
# Makefile for building: SerialPortHandheld
# Generated by qmake (3.1) (Qt 5.14.2)
# Project:  SerialPortHandheld.pro
# Template: subdirs
# Command: D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\bin\qmake.exe -o Makefile SerialPortHandheld.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug"
#############################################################################

MAKEFILE      = Makefile

EQ            = =

first: make_first
QMAKE         = D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = copy /y
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = copy /y
INSTALL_PROGRAM = copy /y
INSTALL_DIR   = xcopy /s /q /y /i
QINSTALL      = D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\bin\qmake.exe -install qinstall
QINSTALL_PROGRAM = D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\bin\qmake.exe -install qinstall -exe
DEL_FILE      = del
SYMLINK       = $(QMAKE) -install ln -f -s
DEL_DIR       = rmdir
MOVE          = move
IDC           = idc
IDL           = midl
ZIP           = zip -r -9
DEF_FILE      = 
RES_FILE      = 
SED           = $(QMAKE) -install sed
MOVE          = move
SUBTARGETS    =  \
		sub-SerialPortDemo \
		sub-SlBase


sub-SerialPortDemo-qmake_all:  FORCE
	@if not exist SerialPortDemo\ mkdir SerialPortDemo\ & if not exist SerialPortDemo\ exit 1
	cd SerialPortDemo\ && $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SerialPortDemo\SerialPortDemo.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug"
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SerialPortDemo\ && $(MAKE) -f Makefile qmake_all
sub-SerialPortDemo: $(MAKEFILE) FORCE
	@if not exist SerialPortDemo\ mkdir SerialPortDemo\ & if not exist SerialPortDemo\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SerialPortDemo\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SerialPortDemo\SerialPortDemo.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile
sub-SerialPortDemo-make_first: FORCE
	@if not exist SerialPortDemo\ mkdir SerialPortDemo\ & if not exist SerialPortDemo\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SerialPortDemo\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SerialPortDemo\SerialPortDemo.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile 
sub-SerialPortDemo-all: FORCE
	@if not exist SerialPortDemo\ mkdir SerialPortDemo\ & if not exist SerialPortDemo\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SerialPortDemo\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SerialPortDemo\SerialPortDemo.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile all
sub-SerialPortDemo-clean: FORCE
	@if not exist SerialPortDemo\ mkdir SerialPortDemo\ & if not exist SerialPortDemo\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SerialPortDemo\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SerialPortDemo\SerialPortDemo.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile clean
sub-SerialPortDemo-distclean: FORCE
	@if not exist SerialPortDemo\ mkdir SerialPortDemo\ & if not exist SerialPortDemo\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SerialPortDemo\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SerialPortDemo\SerialPortDemo.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile distclean
sub-SerialPortDemo-install_subtargets: FORCE
	@if not exist SerialPortDemo\ mkdir SerialPortDemo\ & if not exist SerialPortDemo\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SerialPortDemo\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SerialPortDemo\SerialPortDemo.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile install
sub-SerialPortDemo-uninstall_subtargets: FORCE
	@if not exist SerialPortDemo\ mkdir SerialPortDemo\ & if not exist SerialPortDemo\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SerialPortDemo\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SerialPortDemo\SerialPortDemo.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile uninstall
sub-SlBase-qmake_all:  FORCE
	@if not exist SlBase\ mkdir SlBase\ & if not exist SlBase\ exit 1
	cd SlBase\ && $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SlBase\SlBase.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug"
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SlBase\ && $(MAKE) -f Makefile qmake_all
sub-SlBase: $(MAKEFILE) FORCE
	@if not exist SlBase\ mkdir SlBase\ & if not exist SlBase\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SlBase\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SlBase\SlBase.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile
sub-SlBase-make_first: FORCE
	@if not exist SlBase\ mkdir SlBase\ & if not exist SlBase\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SlBase\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SlBase\SlBase.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile 
sub-SlBase-all: FORCE
	@if not exist SlBase\ mkdir SlBase\ & if not exist SlBase\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SlBase\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SlBase\SlBase.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile all
sub-SlBase-clean: FORCE
	@if not exist SlBase\ mkdir SlBase\ & if not exist SlBase\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SlBase\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SlBase\SlBase.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile clean
sub-SlBase-distclean: FORCE
	@if not exist SlBase\ mkdir SlBase\ & if not exist SlBase\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SlBase\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SlBase\SlBase.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile distclean
sub-SlBase-install_subtargets: FORCE
	@if not exist SlBase\ mkdir SlBase\ & if not exist SlBase\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SlBase\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SlBase\SlBase.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile install
sub-SlBase-uninstall_subtargets: FORCE
	@if not exist SlBase\ mkdir SlBase\ & if not exist SlBase\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SlBase\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SlBase\SlBase.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile uninstall

Makefile: SerialPortHandheld.pro D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\win32-msvc\qmake.conf D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\spec_pre.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\common\angle.conf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\common\windows-desktop.conf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\win32\windows_vulkan_sdk.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\common\windows-vulkan.conf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\common\msvc-desktop.conf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\qconfig.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3danimation.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3danimation_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dcore.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dcore_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dextras.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dextras_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dinput.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dinput_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dlogic.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dlogic_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquick.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquick_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickanimation.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickanimation_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickextras.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickextras_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickinput.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickinput_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickrender.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickrender_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickscene2d.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickscene2d_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3drender.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3drender_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_accessibility_support_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_axbase.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_axbase_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_axcontainer.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_axcontainer_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_axserver.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_axserver_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_bluetooth.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_bluetooth_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_bootstrap_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_charts.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_charts_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_concurrent.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_concurrent_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_core.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_core_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_dbus.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_dbus_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_designer.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_designer_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_designercomponents_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_devicediscovery_support_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_edid_support_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_egl_support_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_eventdispatcher_support_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_fb_support_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_fontdatabase_support_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_gamepad.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_gamepad_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_gui.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_gui_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_help.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_help_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_location.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_location_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_multimedia.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_multimedia_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_multimediawidgets.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_multimediawidgets_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_network.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_network_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_nfc.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_nfc_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_opengl.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_opengl_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_openglextensions.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_openglextensions_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_packetprotocol_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_platformcompositor_support_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_positioning.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_positioning_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_positioningquick.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_positioningquick_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_printsupport.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_printsupport_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qml.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qml_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qmldebug_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qmldevtools_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qmlmodels.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qmlmodels_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qmltest.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qmltest_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qmlworkerscript.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qmlworkerscript_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qtmultimediaquicktools_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3d.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3d_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3dassetimport.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3dassetimport_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3drender.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3drender_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3druntimerender.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3druntimerender_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3dutils.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3dutils_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quickcontrols2.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quickcontrols2_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quickparticles_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quickshapes_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quicktemplates2.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quicktemplates2_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quickwidgets.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quickwidgets_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_remoteobjects.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_remoteobjects_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_repparser.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_repparser_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_scxml.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_scxml_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_sensors.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_sensors_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_serialbus.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_serialbus_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_serialport.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_serialport_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_sql.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_sql_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_svg.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_svg_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_testlib.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_testlib_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_texttospeech.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_texttospeech_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_theme_support_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_uiplugin.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_uitools.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_uitools_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_vulkan_support_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_webchannel.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_webchannel_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_websockets.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_websockets_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_webview.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_webview_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_widgets.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_widgets_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_windowsuiautomation_support_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_winextras.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_winextras_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_xml.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_xml_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_xmlpatterns.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_xmlpatterns_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_zlib_private.pri \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\qt_functions.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\qt_config.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\win32-msvc\qmake.conf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\spec_post.prf \
		.qmake.stash \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\exclusive_builds.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\common\msvc-version.conf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\toolchain.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\default_pre.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\win32\default_pre.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\resolve_config.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\exclusive_builds_post.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\default_post.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\qml_debug.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\precompile_header.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\warn_on.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\qmake_use.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\file_copies.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\win32\windows.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\testcase_targets.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\exceptions.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\yacc.prf \
		D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\lex.prf \
		SerialPortHandheld.pro
	$(QMAKE) -o Makefile SerialPortHandheld.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug"
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\spec_pre.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\common\angle.conf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\common\windows-desktop.conf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\win32\windows_vulkan_sdk.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\common\windows-vulkan.conf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\common\msvc-desktop.conf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\qconfig.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3danimation.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3danimation_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dcore.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dcore_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dextras.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dextras_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dinput.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dinput_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dlogic.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dlogic_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquick.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquick_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickanimation.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickanimation_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickextras.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickextras_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickinput.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickinput_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickrender.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickrender_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickscene2d.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3dquickscene2d_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3drender.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_3drender_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_accessibility_support_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_axbase.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_axbase_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_axcontainer.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_axcontainer_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_axserver.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_axserver_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_bluetooth.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_bluetooth_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_bootstrap_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_charts.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_charts_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_concurrent.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_concurrent_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_core.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_core_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_dbus.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_dbus_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_designer.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_designer_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_designercomponents_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_devicediscovery_support_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_edid_support_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_egl_support_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_eventdispatcher_support_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_fb_support_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_fontdatabase_support_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_gamepad.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_gamepad_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_gui.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_gui_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_help.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_help_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_location.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_location_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_multimedia.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_multimedia_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_multimediawidgets.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_multimediawidgets_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_network.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_network_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_nfc.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_nfc_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_opengl.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_opengl_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_openglextensions.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_openglextensions_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_packetprotocol_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_platformcompositor_support_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_positioning.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_positioning_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_positioningquick.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_positioningquick_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_printsupport.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_printsupport_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qml.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qml_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qmldebug_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qmldevtools_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qmlmodels.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qmlmodels_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qmltest.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qmltest_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qmlworkerscript.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qmlworkerscript_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_qtmultimediaquicktools_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3d.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3d_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3dassetimport.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3dassetimport_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3drender.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3drender_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3druntimerender.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3druntimerender_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3dutils.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick3dutils_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quick_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quickcontrols2.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quickcontrols2_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quickparticles_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quickshapes_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quicktemplates2.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quicktemplates2_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quickwidgets.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_quickwidgets_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_remoteobjects.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_remoteobjects_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_repparser.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_repparser_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_scxml.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_scxml_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_sensors.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_sensors_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_serialbus.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_serialbus_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_serialport.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_serialport_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_sql.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_sql_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_svg.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_svg_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_testlib.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_testlib_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_texttospeech.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_texttospeech_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_theme_support_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_uiplugin.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_uitools.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_uitools_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_vulkan_support_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_webchannel.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_webchannel_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_websockets.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_websockets_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_webview.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_webview_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_widgets.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_widgets_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_windowsuiautomation_support_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_winextras.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_winextras_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_xml.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_xml_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_xmlpatterns.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_xmlpatterns_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\modules\qt_lib_zlib_private.pri:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\qt_functions.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\qt_config.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\win32-msvc\qmake.conf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\spec_post.prf:
.qmake.stash:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\exclusive_builds.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\common\msvc-version.conf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\toolchain.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\default_pre.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\win32\default_pre.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\resolve_config.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\exclusive_builds_post.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\default_post.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\qml_debug.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\precompile_header.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\warn_on.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\qmake_use.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\file_copies.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\win32\windows.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\testcase_targets.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\exceptions.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\yacc.prf:
D:\Qt\Qt5.14.2\5.14.2\msvc2017_64\mkspecs\features\lex.prf:
SerialPortHandheld.pro:
qmake: FORCE
	@$(QMAKE) -o Makefile SerialPortHandheld.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug"

qmake_all: sub-SerialPortDemo-qmake_all sub-SlBase-qmake_all FORCE

make_first: sub-SerialPortDemo-make_first sub-SlBase-make_first  FORCE
all: sub-SerialPortDemo-all sub-SlBase-all  FORCE
clean: sub-SerialPortDemo-clean sub-SlBase-clean  FORCE
distclean: sub-SerialPortDemo-distclean sub-SlBase-distclean  FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) .qmake.stash
install_subtargets: sub-SerialPortDemo-install_subtargets sub-SlBase-install_subtargets FORCE
uninstall_subtargets: sub-SerialPortDemo-uninstall_subtargets sub-SlBase-uninstall_subtargets FORCE

sub-SerialPortDemo-debug:
	@if not exist SerialPortDemo\ mkdir SerialPortDemo\ & if not exist SerialPortDemo\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SerialPortDemo\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SerialPortDemo\SerialPortDemo.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile debug
sub-SlBase-debug:
	@if not exist SlBase\ mkdir SlBase\ & if not exist SlBase\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SlBase\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SlBase\SlBase.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile debug
debug: sub-SerialPortDemo-debug sub-SlBase-debug

sub-SerialPortDemo-release:
	@if not exist SerialPortDemo\ mkdir SerialPortDemo\ & if not exist SerialPortDemo\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SerialPortDemo\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SerialPortDemo\SerialPortDemo.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile release
sub-SlBase-release:
	@if not exist SlBase\ mkdir SlBase\ & if not exist SlBase\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SlBase\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SlBase\SlBase.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile release
release: sub-SerialPortDemo-release sub-SlBase-release

sub-SerialPortDemo-check:
	@if not exist SerialPortDemo\ mkdir SerialPortDemo\ & if not exist SerialPortDemo\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SerialPortDemo\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SerialPortDemo\SerialPortDemo.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile check
sub-SlBase-check:
	@if not exist SlBase\ mkdir SlBase\ & if not exist SlBase\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SlBase\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SlBase\SlBase.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile check
check: sub-SerialPortDemo-check sub-SlBase-check

sub-SerialPortDemo-benchmark:
	@if not exist SerialPortDemo\ mkdir SerialPortDemo\ & if not exist SerialPortDemo\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SerialPortDemo\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SerialPortDemo\SerialPortDemo.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile benchmark
sub-SlBase-benchmark:
	@if not exist SlBase\ mkdir SlBase\ & if not exist SlBase\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd SlBase\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\BaiduSyncdisk\Project\Code\eddy\SerialPortHandheld\SlBase\SlBase.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile benchmark
benchmark: sub-SerialPortDemo-benchmark sub-SlBase-benchmark
install:install_subtargets  FORCE

uninstall: uninstall_subtargets FORCE

FORCE:

