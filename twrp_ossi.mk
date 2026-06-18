#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from TWRP device
$(call inherit-product, device/oneplus/ossi/device.mk)

PRODUCT_DEVICE := ossi
PRODUCT_NAME := ossi
PRODUCT_BRAND := oplus
PRODUCT_MODEL := ossi
PRODUCT_MANUFACTURER := oplus

PRODUCT_GMS_CLIENTID_BASE := android-oplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hal_mgvi_64_64only_armv82-user 15 AP3A.240617.008 1767946034491 release-keys"

BUILD_FINGERPRINT := oneplus/ossi/ossi:15/AP3A.240617.008/1767946034491:user/release-keys
