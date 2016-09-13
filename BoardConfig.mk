#
# Product-specific compile-time definitions.
#

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true

TARGET_ARCH := x86
TARGET_CPU_ABI := x86

TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_CPU_ABI) $(TARGET_CPU_ABI2) $(NATIVE_BRIDGE_ABI_LIST_32_BIT)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_32_BIT)

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1153433600		# 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 419430400
BOARD_CACHEIMAGE_PARTITION_SIZE := 69206016
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

BOARD_SEPOLICY_DIRS += build/target/board/generic/sepolicy
BOARD_SEPOLICY_DIRS += build/target/board/generic_x86/sepolicy

include device/generic/common/BoardConfig.mk

#
# TWRP configuration START
#
# Platform, disable below options first
# TARGET_NO_RADIOIMAGE := true
# TARGET_BOARD_PLATFORM := sc1

BOARD_KERNEL_BASE := 0x80000000

# Redefine these two variables, since they are defined in device/generic/common/BoardConfig.mk
TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := false

# BOARD_KERNEL_CMDLINE :=

# Recovery:Start

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

TARGET_USERIMAGES_USE_EXT4 := true

# TWRP specific build flags
DEVICE_RESOLUTION := 320x480
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_MTP := true
# This excludes parted from the build... parted is prebuilt and for arm CPU only
BOARD_HAS_NO_REAL_SDCARD := true

#
# TWRP configuration END
#

