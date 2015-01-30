$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/Onda/k12_MA975M8/k12_MA975M8-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/Onda/k12_MA975M8/overlay

LOCAL_PATH := device/Onda/k12_MA975M8/prebuilt

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

ADDITIONAL_DEFAULT_PROPERTIES += ro.hardware=amlogic

PRODUCT_COPY_FILES_OVERRIDES += \
    root/fstab.goldfish \
    root/init.goldfish.rc \
    recovery/root/fstab.goldfish

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_k12_MA975M8
PRODUCT_DEVICE := k12_MA975M8
