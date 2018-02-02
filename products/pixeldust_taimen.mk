# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440


# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/pixeldust/configs/pixeldust_phone.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/pixeldust/configs/system_optional.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

-include device/google/taimen/device-carbon.mk

# Google Apps
$(call inherit-product, vendor/googleapps/googleapps.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := pixeldust_taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
TARGET_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    BUILD_FINGERPRINT=google/taimen/taimen:8.1.0/OPM1.171019.011/4448085:user/release-keys \
    PRIVATE_BUILD_DESC="taimen-user 8.1.0 OPM1.171019.011 4448085 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.pixeldust.maintainer="nitin1438"

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
