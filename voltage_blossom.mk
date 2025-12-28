#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Malloc
PRODUCT_DISABLE_SCUDO := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/blossom/device.mk)

# Inherit some common VoltageOS stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Inherit mindthegapps stuff.
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)

# include private signing keys
-include vendor/niigo-priv/keys/keys.mk

# always nuke audiofx
NUKE_AUDIOFX := true

# Matlog
TARGET_DISABLE_MATLOG := true

# always append time of day
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720

# VoltageOS CPUsets configuration
VOLTAGE_CPU_SMALL_CORES := 0,1,2,3
VOLTAGE_CPU_BIG_CORES := 4,5,6,7
VOLTAGE_ALL_CORES := 0-7
VOLTAGE_CPU_SYS_BG := 0-3
VOLTAGE_CPU_BG := 0-2
VOLTAGE_CPU_FG := 4-7
VOLTAGE_CPU_LIMIT_BG := 0-1
VOLTAGE_CPU_LIMIT_UI := 0-5
VOLTAGE_CPU_DISPLAY := 4-7

PRODUCT_NAME := voltage_blossom
PRODUCT_DEVICE := blossom
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
