# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/full_apache.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := kernel/samsung/msm7x30
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_RELEASE_NAME := apache

# Setup device configuration
PRODUCT_NAME := cm_apache
PRODUCT_DEVICE := apache
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SGH-I847

#PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=samsung/SGH-I847/SGH-I847:2.3.6/GINGERBREAD/XXLM6:user/release-keys PRIVATE_BUILD_DESC="GT-I8150-user 2.3.6 GINGERBREAD XXLM6 release-keys"
