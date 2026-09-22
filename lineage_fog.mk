#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 720

# Inherit from fog device
$(call inherit-product, device/xiaomi/fog/device.mk)


XEPHIRA_MAINTAINER := Ajay
XEPHIRA_MAINTAINER_URL := https://github.com/phhgsi
WITH_GMS := true
# Hardware Specification Overrides (Displayed in Liquid Glass About Phone)
XEPHIRA_SOC := Snapdragon 680 4G
XEPHIRA_BATTERY := 5000 mAh
XEPHIRA_DISPLAY_SPEC := 6.71" IPS LCD
XEPHIRA_CAMERA := 50MP
PRODUCT_NAME := lineage_fog
PRODUCT_DEVICE := fog
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 10C

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="fog_global-user 13 TKQ1.221114.001 V14.0.8.0.TGEMIXM release-keys" \
    BuildFingerprint=Redmi/fog_global/fog:13/TKQ1.221114.001/V14.0.8.0.TGEMIXM:user/release-keys
