#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit from m21 device
$(call inherit-product, device/samsung/m21/device.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

## Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier, this must come after all inclusions
PRODUCT_NAME := lineage_m21
PRODUCT_DEVICE := m21
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M215F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung
