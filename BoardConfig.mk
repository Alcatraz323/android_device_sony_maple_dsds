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

### INHERIT FROM YOSHINO-COMMON
include device/sony/yoshino-common/BoardConfigPlatform.mk
include vendor/sony/maple_dsds/BoardConfigVendor.mk

DEVICE_PATH := device/sony/maple_dsds

### EVOLUTION BRANDING
EVO_MAINTAINER := Alcatraz&Sharakovia
EVO_DONATE_URL := https://github.com/Classic-Phone-Devs

PRODUCT_PLATFORM := yoshino

### BOOTLOADER
TARGET_BOOTLOADER_BOARD_NAME := G8142

### KERNEL
TARGET_KERNEL_CONFIG := lineage-msm8998-yoshino-maple_dsds_defconfig

BOARD_KERNEL_CMDLINE += androidboot.hardware=maple_dsds

### PARTITIONS
# See also /proc/partitions on the device
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 7707033600
# Reserve space for data encryption (54587760640-32768)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 54587727872

### DISPLAY
TARGET_SCREEN_DENSITY := 480

# Split build properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

### HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

### PROPS
# Add device-specific ones
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
