## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := k12_MA975M8

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/Onda/k12_MA975M8/device_k12_MA975M8.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := k12_MA975M8
PRODUCT_NAME := cm_k12_MA975M8
PRODUCT_BRAND := Onda
PRODUCT_MODEL := k12_MA975M8
PRODUCT_MANUFACTURER := Onda
