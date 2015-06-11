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

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# Use prebuilt headers
TARGET_SPECIFIC_HEADER_PATH := device/htc/vivo/include

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
COMMON_GLOBAL_CFLAGS += -DNO_UPDATE_PREVIEW
TARGET_RELEASE_CPPFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Optimizations
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Board
TARGET_BOARD_PLATFORM := msm7x30

# Bootloader
TARGET_NO_BOOTLOADER := true

# Vendor
BOARD_VENDOR := htc

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := scorpion
TARGET_CPU_SMP := false
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

BOARD_HARDWARE_CLASS := device/htc/vivo/cmhw

# SELinux
-include device/qcom/sepolicy/sepolicy.mk

# Wifi
WIFI_BAND := 802_11_ABGN
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_STA := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_NAME := bcmdhd
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcmdhd.ko"

# Display
BOARD_EGL_CFG := device/htc/vivo/prebuilt/egl.cfg
USE_OPENGL_RENDERER := true
HWUI_COMPILE_FOR_PERF := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_NO_HW_VSYNC := true

# Audio
BOARD_HAVE_HTC_AUDIO := true
BOARD_HAVE_PRE_KITKAT_AUDIO_POLICY_BLOB := true # Check later
BOARD_PREBUILT_LIBAUDIO := false
BOARD_USES_LEGACY_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := false
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := false

# Override healthd HAL
BOARD_HAL_STATIC_LIBRARIES := libhealthd.msm7x30

# Radio
BOARD_PROVIDES_LIBRIL := true
TARGET_NEEDS_NON_PIE_SUPPORT := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/vivo/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/htc/vivo/bluetooth/libbt_vndcfg.txt

# Camera
TARGET_DISABLE_ARM_PIE := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_HAVE_HTC_FFC := true
BOARD_USE_REVERSE_FFC := true
USE_CAMERA_STUB := true
BOARD_USES_PMEM_ADSP := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Legacy Patches
BOARD_USES_LEGACY_MMAP := true
BLOCK_BASED_OTA := false

# QCOM
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true

# ION
TARGET_USES_ION := true

# No sync framework for this device...
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Boot Animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# Webkit
TARGET_FORCE_CPU_UPLOAD := true

# inherit from the proprietary version
-include vendor/htc/vivo/BoardConfigVendor.mk

# Bootloader & Recovery
TARGET_BOOTLOADER_BOARD_NAME := vivo
TARGET_RECOVERY_FSTAB := device/htc/vivo/ramdisk/fstab.vivo
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun0/file
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# Kernel
BOARD_KERNEL_CMDLINE := no_console_suspend=1 androidboot.selinux=permissive
BOARD_KERNEL_RECOVERY_CMDLINE := $(BOARD_KERNEL_CMDLINE) msmsdcc_power_gpio=88
BOARD_KERNEL_BASE := 0x4400000
BOARD_KERNEL_PAGE_SIZE := 4096
TARGET_KERNEL_CONFIG := cyanogen_vivo_defconfig
TARGET_KERNEL_SOURCE := kernel/htc/vivo

# Use Lollipop's new fonts
EXTENDED_FONT_FOOTPRINT := true

# Use dlmalloc instead of jemalloc because it's
# supposedly better in single-threaded applications
# http://blog.poweredbytoast.com/memory-allocators
MALLOC_IMPL := dlmalloc

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := vivo
BOARD_VENDOR_QCOM_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
TARGET_GPS_HAL_PATH := device/htc/vivo/gps

# Partitons
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 585101312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 36

# Brightness
BRIGHTNESS_SYS_FILE := /sys/devices/platform/leds-pm8058/leds/keyboard-backlight/brightness

# TWRP
TW_THEME := portrait_mdpi
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_INCLUDE_CRYPTO := true
TW_NO_SCREEN_BLANK := true
TW_INCLUDE_DUMLOCK := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
#RECOVERY_VARIANT := twrp
TW_NO_CPU_TEMP := true
TW_NO_USB_STORAGE := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/htc_lpm/lpm_mode

# Misc
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common
#TARGET_PREBUILT_KERNEL := device/htc/vivo/prebuilt/kernel
#TARGET_PREBUILT_RECOVERY_KERNEL := device/htc/vivo/prebuilt/kernel

# Dexpreopt
ifeq ($(USE_DEXPREOPT),true)
    # Enable dex-preoptimization to speed up first boot sequence
    ifeq ($(HOST_OS),linux)
        ifeq ($(WITH_DEXPREOPT),)
            WITH_DEXPREOPT := true
            WITH_DEXPREOPT_COMP := true
        endif
    endif
endif
