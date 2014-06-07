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

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
COMMON_GLOBAL_CFLAGS += -DNO_UPDATE_PREVIEW
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# Optimalizations
ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_HIGH_OPTIMIZATION_COMPAT := true
TARGET_USE_O3 := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Board
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Bootloader
TARGET_NO_BOOTLOADER := true

# Vendor
BOARD_VENDOR := htc

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := scorpion
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Common stuffs for proper compilation
TARGET_SPECIFIC_HEADER_PATH := device/htc/vivo/include

BOARD_HARDWARE_CLASS := device/htc/vivo/cmhw

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
WIFI_DRIVER_FW_PATH_P2P := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_NAME := bcmdhd
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcmdhd.ko"
BOARD_LEGACY_NL80211_STA_EVENTS := true

# Display
BOARD_EGL_CFG := device/htc/vivo/prebuilt/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_NO_HW_VSYNC := true
TARGET_USES_QCOM_BSP := true

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_HAVE_HTC_AUDIO := true
BOARD_PREBUILT_LIBAUDIO := false
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
BOARD_USES_LEGACY_ALSA_AUDIO := true

# FM Radio
BOARD_HAVE_QCOM_FM := true

# Power
TARGET_POWERHAL_VARIANT := cm

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/vivo/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/htc/vivo/bluetooth/libbt_vndcfg.txt

# Camera
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
TARGET_DISABLE_ARM_PIE := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_HAVE_HTC_FFC := true
BOARD_USE_REVERSE_FFC := true
TARGET_DISABLE_ARM_PIE := true
USE_CAMERA_STUB := true
BOARD_USES_PMEM_ADSP := true

# Legacy Patches
TARGET_QCOM_MEDIA_VARIANT := legacy
TARGET_QCOM_DISPLAY_VARIANT := legacy
USE_SET_METADATA := false

# RIL
BOARD_USES_LEGACY_RIL := true

# QCOM
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true

# ION
TARGET_USES_ION := true

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
TARGET_RECOVERY_FSTAB = device/htc/vivo/ramdisk/fstab.vivo
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun0/file

# Kernel
BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_RECOVERY_CMDLINE := $(BOARD_KERNEL_CMDLINE) msmsdcc_power_gpio=88 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x4400000
BOARD_KERNEL_PAGE_SIZE := 4096
TARGET_KERNEL_CONFIG := cyanogenmod_defconfig
TARGET_KERNEL_SOURCE := kernel/htc/vivo
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.9

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := vivo
BOARD_VENDOR_QCOM_AMSS_VERSION := 1200
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Partitons
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 585101312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 5194304
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Misc
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common
#TARGET_PREBUILT_KERNEL := device/htc/vivo/prebuilt/kernel
#TARGET_PREBUILT_RECOVERY_KERNEL := device/htc/vivo/prebuilt/kernel

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/htc/vivo/sepolicy

BOARD_SEPOLICY_UNION += \
    app.te \
    bluetooth.te \
    device.te \
    domain.te \
    drmserver.te \
    file_contexts \
    files \
    file.te \
    hci_init.te \
    healthd.te \
    init.te \
    init_shell.te \
    keystore.te \
    kickstart.te \
    mediaserver.te \
    rild.te \
    surfaceflinger.te \
    system.te \
    ueventd.te \
    untrusted_app.te \
    vold.te \
    wpa.te \
    wpa_socket.te
