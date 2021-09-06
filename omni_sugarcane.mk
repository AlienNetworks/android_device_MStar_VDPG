$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, vendor/omni/config/common.mk)
PRODUCT_COPY_FILES += device/MStar/sugarcane/prebuilt/Image.gz-dtb:kernel

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
