#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamoleb device
$(call inherit-product, device/oneplus/guacamoleb/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/xperience/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := xperience_guacamoleb
PRODUCT_DEVICE := guacamoleb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := GM1905
PRODUCT_MANUFACTURER := OnePlus
CUSTOM_DEVICE := OnePlus7

PRODUCT_SYSTEM_NAME := OnePlus7
PRODUCT_SYSTEM_DEVICE := OnePlus7

PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Resolution
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2240
TARGET_SCREEN_WIDTH := 1080

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="walleye-user 8.1.0 OPM1.171019.011 4448085 release-keys" \
    TARGET_DEVICE=OnePlus7 \
    TARGET_PRODUCT=OnePlus7 \

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
BUILD_FINGERPRINT := google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys

