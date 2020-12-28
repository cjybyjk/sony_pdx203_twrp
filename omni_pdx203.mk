#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := pdx203

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from common.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Sony
PRODUCT_DEVICE := pdx203
PRODUCT_MANUFACTURER := Sony
PRODUCT_NAME := omni_pdx203
PRODUCT_MODEL := Xperia 1 II

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

TARGET_VENDOR_PRODUCT_NAME := pdx203

PRODUCT_BUILD_PROP_OVERRIDES += \
   
    PRIVATE_BUILD_DESC="Sony/XQ-AT52/XQ-AT52 10 58.0.A.3.224 058000A003022402854466984:user release-keys"
    BUILD_PRODUCT=pdx203 \
    TARGET_DEVICE=pdx203

BUILD_FINGERPRINT := Sony/XQ-AT52/XQ-AT52:10/58.0.A.3.224/058000A003022402854466984:user/release-keys

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
