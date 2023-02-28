#
# Copyright (C) 2022 Project Lighthouse
#
# SPDX-License-Identifier: Apache-2.0
#

# Check for target product
ifeq (lighthouse_spes,$(TARGET_PRODUCT))

# Inherit from framework configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from spes/spesn device configuration
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit from common Lighthouse configuration
$(call inherit-product, vendor/lighthouse/target/product/lighthouse-target.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier
PRODUCT_NAME := lighthouse_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

endif
