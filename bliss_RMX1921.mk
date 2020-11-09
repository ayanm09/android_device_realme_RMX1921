#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Bliss stuff
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/bliss/config/common.mk)

#Vanilla Build
BLISS_BUILD_VARIANT=vanilla

# Inherit from RMX1921 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := RMX1921
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := bliss_RMX1921
PRODUCT_MODEL := Realme XT

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coral-user 11 RP1A.201105.002 6869500 release-keys" \
    PRODUCT_NAME="RMX1921"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/coral/coral:11/RP1A.201105.002/6869500:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
