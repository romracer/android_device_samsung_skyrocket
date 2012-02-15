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

# inherit from the proprietary version
-include vendor/samsung/galaxys2sr/BoardConfigVendor.mk

USE_CAMERA_STUB := true
BOARD_USES_GENERIC_AUDIO := false

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8660_SURF
TARGET_BOARD_PLATFORM := msm8660
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true

BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/galaxys2sr/recovery/minui/graphics.c
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_INTERNAL_PARTITIONS := true

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_watchdog.appsbark=0 msm_watchdog.enable=1 loglevel=4
BOARD_KERNEL_BASE := 0x40400000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00a00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00a00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x25600000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x80200000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/samsung/galaxys2sr/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_MMCUTILS := true

BOARD_DATA_DEVICE := /dev/block/mmcblk0p25
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := nosuid,nodev,relatime,barrier=1,noauto_da_alloc
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p24
BOARD_SYSTEM_FILESYSTEM_OPTIONS := noatime,nodiratime,barrier=1,noauto_da_alloc
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p26
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := nosuid,nodev,relatime,barrier=1,noauto_da_alloc

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
#BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p28
BOARD_UMS_LUNFILE := /sys/devices/platform/usb_mass_storage/lun1/file

USE_OPENGL_RENDERER :=true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# WiFi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4330
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/bcm4330_sta.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/bcm4330_aps.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcm4330_mfg.bin nvram_path=/system/etc/wifi/nvram_mfg.txt"
WIFI_DRIVER_MODULE_NAME     := "dhd"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
