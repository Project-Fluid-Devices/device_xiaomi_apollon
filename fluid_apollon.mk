#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from apollon device
$(call inherit-product, device/xiaomi/apollon/device.mk)

# Inherit some common Fluid stuff.
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)

PRODUCT_NAME := fluid_apollon
PRODUCT_DEVICE := apollon
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10T

# GApps
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
IS_PHONE := true
ifeq ($(WITH_GAPPS),true)
TARGET_INCLUDE_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true
endif

FLUID_BUILD_TYPE := OFFICIAL
PRODUCT_PRODUCT_PROPERTIES += \
  ro.fluid.maintainer=Ramisky \
  ro.fluid.cpu=SDM865

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="apollo-user 11 RKQ1.200826.002 V12.5.1.0.RJDMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/apollo_global/apollo:11/RKQ1.200826.002/V12.5.1.0.RJDMIXM:user/release-keys
