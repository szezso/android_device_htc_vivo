# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from common msm7x30 Recovery
-include device/htc/7x30-recovery/BoardConfigCommon.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true
USE_MALLOC_ALIGNMENT := 16
TARGET_HAVE_TSLIB := false

TARGET_EXTRA_CFLAGS += $(call cc-option,-march=armv7-a -mtune=cortex-a8)
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

TARGET_SPECIFIC_HEADER_PATH := device/htc/msm7x30-common/include


# Merged Wifi Defines
WIFI_BAND := 802_11_ABGN
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_STA := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_NAME := bcmdhd
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcmdhd.ko"

# QCOM Display
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_EGL_CFG := device/htc/msm7x30-common/egl.cfg
BOARD_USES_ADRENO_200 := true
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_PROVIDES_LIBLIGHTS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GENLOCK := true
USE_OPENGL_RENDERER := true

# QCOM
BOARD_USE_QCOM_PMEM := true
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true
TARGET_USES_PMEM := true

# Legacy
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DREFRESH_RATE=60 -DQCOM_NO_DMX_SUPPORT -DQCOM_NO_SECURE_PLAYBACK -DICS_CAMERA_BLOB

BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_USE_NEW_LIBRIL_HTC := true
BOARD_USES_LEGACY_RIL := true

# Audio
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_PREBUILT_LIBAUDIO := false
BOARD_USES_QCOM_AUDIO_VOIPMUTE := true
BOARD_USES_QCOM_AUDIO_RESETALL := false
BOARD_HAVE_QCOM_FM := false
BOARD_USES_QCOM_AUDIO_LPA := false
BOARD_USES_QCOM_AUDIO_SPEECH := false

# Boot Animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

BOARD_USES_HTC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
BOARD_NEEDS_MEMORYHEAPPMEM := true

# Experimental
COMMON_GLOBAL_CFLAGS += -DUSES_LEGACY_GRAPHICS
BOARD_USES_LEGACY_GRAPHICS := true

USE_CAMERA_STUB := true

# Compiler Optimization
ARCH_ARM_HIGH_OPTIMIZATION := true

# Optimisations used by Qualcomm
TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_USE_SPARROW_BIONIC_OPTIMIZATION := true
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true

# inherit from common msm7x30
-include device/htc/msm7x30-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/vivo/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := vivo

BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_RECOVERY_CMDLINE := $(BOARD_KERNEL_CMDLINE) msmsdcc_power_gpio=88
BOARD_KERNEL_BASE := 0x4400000
BOARD_KERNEL_PAGE_SIZE := 4096

# needed or FFC FC's for some reason.
TARGET_DISABLE_ARM_PIE := true

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := vivo
BOARD_VENDOR_QCOM_AMSS_VERSION := 1200
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

BOARD_HAVE_HTC_FFC := true
BOARD_USE_REVERSE_FFC := true

# Workaround for Vivo's broken overlay scaling
#BOARD_OVERLAY_MINIFICATION_LIMIT := 2

# cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p17: 00040000 00000200 "misc"
#mmcblk0p21: 0087f400 00000200 "recovery"
#mmcblk0p22: 00400000 00000200 "boot"
#mmcblk0p25: 22dffe00 00000200 "system"
#mmcblk0p27: 12bffe00 00000200 "cache"
#mmcblk0p26: 496ffe00 00000200 "userdata"
#mmcblk0p28: 014bfe00 00000200 "devlog"
#mmcblk0p29: 00040000 00000200 "pdata"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 585101312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_FLASH_BLOCK_SIZE := 262144

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common
TARGET_PREBUILT_KERNEL := device/htc/vivo/prebuilt/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/htc/vivo/prebuilt/kernel

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# for recovery
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun0/file
