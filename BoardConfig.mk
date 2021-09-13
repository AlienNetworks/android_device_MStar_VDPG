DEVICE_PATH := device/MStar/sugarcane

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53
TARGET_USES_64_BIT_BINDER := true

#ENABLE_CPUSETS := true
#ENABLE_SCHEDBOOST := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := m7221
TARGET_NO_BOOTLOADER := true
#TARGET_USES_UEFI := true

# Platform
TARGET_BOARD_PLATFORM := m7221
#TARGET_BOARD_PLATFORM_GPU := qcom-adreno640
          
# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS0,115200 androidboot.console=ttyS0 root=/dev/ram rw rootwait init=/init CORE_DUMP_PATH=/data/core_dump.%e_%p.gz KDebug=1 delaylogo=true androidboot.selinux=permissive security=selinux platform=sn tee_mode=optee str_ignore_wakelock pm_path=/tvconfig/config/PM.bin
BOARD_KERNEL_BASE := 0x20278000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00008100
BOARD_RAMDISK_OFFSET     := 0x01008000
BOARD_KERNEL_IMAGE_NAME := Image-dtb
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64         
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image-dtb
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_INCLUDE_RECOVERY_DTBO := true
#BOARD_BOOTIMG_HEADER_VERSION := 1
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# QCOM
#TARGET_USE_SDCLANG := true

# Assert
TARGET_OTA_ASSERT_DEVICE := sugarcane

# Avb
#BOARD_AVB_ENABLE := true
#BOARD_AVB_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)

# Partitions
#BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_FLASH_BLOCK_SIZE := 0
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1081800
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5368709120
#BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 12884901888
#BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
#BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# System as root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
#BOARD_ROOT_EXTRA_FOLDERS := bluetooth dsp firmware persist
BOARD_SUPPRESS_SECURE_ERASE := true

# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

# Crypto
TW_INCLUDE_CRYPTO := true
#TW_INCLUDE_FBE := true
#TW_INCLUDE_FBE_METADATA_DECRYPT := true
#BOARD_USES_METADATA_PARTITION := true

# TWRP specific build flags
TW_THEME := landscape_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
#TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true
TW_INPUT_BLACKLIST := "hbtp_vm"
#TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
#TW_MAX_BRIGHTNESS := 1023
#TW_DEFAULT_BRIGHTNESS := 600
#TW_Y_OFFSET := 5
#TW_H_OFFSET := -5
TW_SCREEN_BLANK_ON_BOOT := true
#TWRP_INCLUDE_LOGCAT := true
#TARGET_USES_LOGD := true
#TARGET_USES_MKE2FS := true
TW_EXCLUDE_TWRPAPP := true
TW_HAS_EDL_MODE := true
#LZMA_RAMDISK_TARGETS := recovery
#LZMA_COMPRESSION := -9

#BOARD_USES_FULL_RECOVERY_IMAGE := true
#BOARD_FLASH_BLOCK_SIZE := 0
#BOARD_HAS_NO_REAL_SDCARD := true
#BOARD_SUPPRESS_SECURE_ERASE := true
#BOARD_RECOVERY_SWIPE := true
#BOARD_USES_MMCUTILS := true
#BOARD_SUPPRESS_EMMC_WIPE := true
#BOARD_CHARGER_SHOW_PERCENTAGE := true

# Set FSTAB
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/etc/recovery.fstab
