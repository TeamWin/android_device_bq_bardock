$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/bq/bardock/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += device/bq/bardock/kernel:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := bardock
PRODUCT_NAME := omni_bardock
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris X
PRODUCT_MANUFACTURER := bq

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=bardock
