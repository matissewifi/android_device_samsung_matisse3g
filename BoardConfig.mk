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

# inherit from common matisse-common
-include device/samsung/matisse-common/BoardConfigCommon.mk

# Recovery
TARGET_OTA_ASSERT_DEVICE := matisse3g

DEVICE_PATH := device/samsung/matisse3g

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk
TARGET_KERNEL_VARIANT_CONFIG := msm8226-sec_matisse3g_defconfig


# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# RIL
#BOARD_VENDOR := samsung
#BOARD_MOBILEDATA_INTERFACE_NAME := "rmnet0"
BOARD_PROVIDES_LIBRIL := true
TARGET_RIL_VARIANT := caf

# Custom RIL class
BOARD_RIL_CLASS := ../../../$(DEVICE_PATH)/ril

# Radio
PRODUCT_PACKAGES += \
libril_shim

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Build
BLOCK_BASED_OTA := true

# inherit from the proprietary version
-include vendor/samsung/matisse3g/BoardConfigVendor.mk
