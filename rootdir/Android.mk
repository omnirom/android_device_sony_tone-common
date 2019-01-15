LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := fstab.$(TARGET_DEVICE)
LOCAL_SRC_FILES := vendor/etc/fstab.tone
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := fstab.$(TARGET_DEVICE)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.tone
LOCAL_SRC_FILES := vendor/etc/init/init.tone.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.tone
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.tone.pwr
LOCAL_SRC_FILES := vendor/etc/init/init.tone.pwr.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.tone.pwr
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ueventd
LOCAL_SRC_FILES := vendor/ueventd.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := ueventd
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := neversleep.sh
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES_arm64 := vendor/bin/neversleep.sh
LOCAL_INIT_RC_64  := vendor/etc/init/neversleep.rc
LOCAL_MODULE_TARGET_ARCH := arm64
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)
