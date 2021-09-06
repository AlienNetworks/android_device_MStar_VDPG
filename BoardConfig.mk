LOCAL_PATH := device/MStar/sugarcane

TARGET_BOARD_PLATFORM := m7221               
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := sugarcane

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true            # To add info about F2FS Filesystem Data Block
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
# BOARD_USES_FULL_RECOVERY_IMAGE := true      # Uncomment this line if you want to remove size restriction
BOARD_FLASH_BLOCK_SIZE := 0                   # Might be different for your chip
BOARD_HAS_NO_REAL_SDCARD := true              # Depricated
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
RECOVERY_SDCARD_ON_DATA := true               # Optional: If /sdcard partition is emulated on /data partition 

# TWRP stuff
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_SUPERSU := true                    # true/false: Add SuperSU or not
TW_INCLUDE_CRYPTO := true                     # true/false: Add Data Encryption Support or not
TW_INPUT_BLACKLIST := "hbtp_vm"               # Optional: Disables virtual mouse
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := landscape_hdpi                    # Set the theme
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TW_MAX_BRIGHTNESS := 100
TW_DEFAULT_BRIGHTNESS := 100                  # Set custom brightness, low is better
TW_INCLUDE_NTFS_3G := true                    # Include NTFS Filesystem Support
TW_INCLUDE_FUSE_EXFAT := true                 # Include Fuse-ExFAT Filesystem Support
TWRP_INCLUDE_LOGCAT := true                   # Include LogCat Binary
TW_INCLUDE_FB2PNG := true                     # Include Screenshot Support
TW_DEFAULT_LANGUAGE := en                     # Set Default Language 
TW_EXTRA_LANGUAGES := false

# Kernel
TARGET_IS_64_BIT := true            
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/Image.gz-dtb
BOARD_KERNEL_CMDLINE := buildvariant=userdebug
BOARD_KERNEL_BASE := 0x20278000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01008000 --tags_offset 0x00008100
BOARD_KERNEL_IMAGE_NAME := zImage-dtb

# Set FSTAB
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/recovery.fstab           

# Architecture
TARGET_BOARD_SUFFIX := _64                   
TARGET_USES_64_BIT_BINDER := true  
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
TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT)
