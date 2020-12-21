#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Bliss stuff
TARGET_GAPPS_ARCH := arm64
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

#Official Build
BLISS_BUILDTYPE=OFFICIAL

PRODUCT_GMS_CLIENTID_BASE := android-realme

BUILD_FINGERPRINT := "google/coral/coral:11/RQ1A.201205.008/6943376:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRIVATE_BUILD_DESC="coral-user 11 RQ1A.201205.008 6943376 release-keys" \
        PRODUCT_NAME="RMX1921" \
	TARGET_DEVICE="RMX1921"


