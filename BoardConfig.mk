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
TARGET_OTA_ASSERT_DEVICE := matissewifi,matisse3g
TARGET_OTA_ASSERT_DEVICE += matissewifi,matissewifiue,matissewifix

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8226-sec_matisse3g_defconfig

# Radio
TARGET_RIL_VARIANT := caf
BOARD_PROVIDES_LIBRIL := false

# Custom RIL class
BOARD_RIL_CLASS := ../../../$(DEVICE_PATH)/ril

# Radio
PRODUCT_PACKAGES += \
libril_shim

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# inherit from the proprietary version
-include vendor/samsung/matisse3g/BoardConfigVendor.mk
