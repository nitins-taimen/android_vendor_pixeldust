# Copyright (C) 2017 The PixelDust Project
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

# Inherit AOSP device configuration for marlin.
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

# Include common PixelDust stuff
include vendor/pixeldust/configs/pixeldust_phone.mk

# Setup device specific product configuration.
PRODUCT_NAME := pixeldust_sailfish
PRODUCT_BRAND := Google
PRODUCT_DEVICE := sailfish
PRODUCT_MODEL := Pixel
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    BUILD_FINGERPRINT=google/sailfish/sailfish:7.1.1/NOF27C/3687810:user/release-keys \
    PRIVATE_BUILD_DESC="sailfish-user 7.1.1 NOF27C 3687810 release-keys"
