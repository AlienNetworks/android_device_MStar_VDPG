ifneq ($(filter sugarcane,$(TARGET_DEVICE)),)
LOCAL_PATH := device/MStar/sugarcane
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
