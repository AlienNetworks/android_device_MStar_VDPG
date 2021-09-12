#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := sugarcane

###
#$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
#$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
#$(call inherit-product, device/MStar/sugarcane/device.mk)

# $(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
# $(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#PRODUCT_COPY_FILES += device/MStar/sugarcane/prebuilt/Image.gz-dtb:kernel
# PRODUCT_COPY_FILES += device/MStar/sugarcane/recovery/root/*:root/*
###

#$(call inherit-product, build/target/product/full_base.mk)

# Add this line if your device is 64-bit
#$(call inherit-product, build/target/product/core_64_bit.mk)
# Otherwise, If you have 32-bit device, add the below line instead of above line
#$(call inherit-product, build/target/product/core_minimal.mk

# Another common config inclusion
#$(call inherit-product, build/target/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
#$(call inherit-product, vendor/omni/config/common.mk)

# Replace $$DEVICE$$ with your Device Name's Value.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value.
#PRODUCT_COPY_FILES += device/$$BRAND$$/$$DEVICE$$/prebuilt/zImage:kernel
#PRODUCT_COPY_FILES += device/MStar/sugarcane/prebuilt/Image.gz-dtb:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sugarcane
PRODUCT_NAME := omni_sugarcane
PRODUCT_BRAND := MStar
PRODUCT_MODEL := sugarcane
PRODUCT_MANUFACTURER := MStar

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="MStar/sugarcane/sugarcane:8.0.0/OPR5.170623.014/TVOS-04.24.010.04.01:userdebug/test-keys" \
    PRIVATE_BUILD_DESC="sugarcane-userdebug"
