$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# Otherwise, If you have 32-bit device, add the below line instead of above line
# $(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace ${_CODENAME_} with your Device Name's Value.
# Replace ${_VENDORNAME_} with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/MStar/sugarcane/prebuilt/kernel:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := sugarcane
PRODUCT_NAME := omni_sugarcane
PRODUCT_BRAND := MStar
PRODUCT_MODEL := sugarcane
PRODUCT_MANUFACTURER := MStar

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="MStar/sugarcane/sugarcane:8.0.0/OPR5.170623.014/TVOS-04.24.010.04.01:userdebug/test-keys" \
    PRIVATE_BUILD_DESC="sugarcane-userdebug 8.0.0 OPR5.170623.014 TVOS-04.24.010.04.01 test-keys"