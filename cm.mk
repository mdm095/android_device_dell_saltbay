# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit some common CM stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## he is reponsible for cm version under build
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_saltbay
PRODUCT_BRAND := Dell
PRODUCT_MODEL := Venue7 3740 LTE
PRODUCT_MANUFACTURER := Dell
PRODUCT_DEVICE := saltbay

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=saltbay \
	PRIVATE_BUILD_DESC="saltbay_64-user 4.4.4 KTU84P eng.YTD802A555000.20151009.061051 release-keys"


