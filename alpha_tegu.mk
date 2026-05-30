#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
$(call inherit-product, vendor/alpha/config/common_full_phone.mk)

PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := false

# Inherit device configuration
DEVICE_CODENAME := tegu
DEVICE_PATH := device/google/tegu
VENDOR_PATH := vendor/google/tegu
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 9a
PRODUCT_NAME := alpha_$(DEVICE_CODENAME)

# Boot animation
TARGET_SCREEN_HEIGHT := 2424
TARGET_SCREEN_WIDTH := 1080

PRODUCT_HOTWORD_BUILD := true

# Device config
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := false
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Build Config
TARGET_BUILD_PACKAGE := 3
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_GOOGLE_RECORDER := false

# Maintainer
ALPHA_BUILD_TYPE := Official
ALPHA_MAINTAINER := Vikas(Optimus)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tegu-user 16 BP4A.260205.001 14624666 release-keys" \
    BuildFingerprint=google/tegu/tegu:16/BP4A.260205.001/14624666:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
