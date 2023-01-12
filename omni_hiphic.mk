#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hiphic device
$(call inherit-product, device/motorola/hiphic/device.mk)

PRODUCT_DEVICE := hiphic
PRODUCT_NAME := omni_hiphic
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT2201-2
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hiphic-user 12 S3SC32.7-42-8 c02b71 release-keys"

BUILD_FINGERPRINT := motorola/hiphic/hiphic:12/S3SC32.7-42-8/c02b71:user/release-keys
