#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := r8q

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/r8q/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/r8q/recovery/root,recovery/root)

PRODUCT_DEVICE := r8q
PRODUCT_NAME := omni_r8q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G781B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r8qxxx-user 11 RP1A.200720.012 G781BXXSDHXH1 release-keys"

BUILD_FINGERPRINT := samsung/r8qxxx/r8q:11/RP1A.200720.012/G781BXXSDHXH1:user/release-keys
