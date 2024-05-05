#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/infinix/X6512

# Dynamic Partition
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30

# API
PRODUCT_SHIPPING_API_LEVEL := 30

# Boot Control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctl

PRODUCT_PACKAGES_DEBUG += \
    bootctrl.mt6761

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery

PRODUCT_PROPERTY_OVERRIDES += \
    ro.bootimage.build.date.utc=0 \
    ro.build.date.utc=0
