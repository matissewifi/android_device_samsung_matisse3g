#
# Copyright (C) 2017 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/samsung/matisse3g

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/matisse3g/matisse3g-vendor.mk)

# Disable RIL
PRODUCT_PROPERTY_OVERRIDES += \
	ro.carrier=wifi-only \
	ro.radio.noril=1

# Telephony
PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnCdmaDevice=0

#RIL
BOARD_PROVIDES_LIBRIL := false

# matisse-common
$(call inherit-product, device/samsung/matisse-common/matisse.mk)

# DJABHipHop Builds(Personal Build)
#DEVICE_SUPPORT_DJ :=true

# TODO: opengapps
#$(call inherit-product, vendor/light/config/opengapps.mk)
