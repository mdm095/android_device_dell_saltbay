# Copyright (C) 2014 The CyanogenMod Project
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


# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/dell/saltbay/saltbay-vendor.mk)

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/dell/saltbay/overlay

PRODUCT_AAPT_CONFIG := normal large xlarge hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
	
# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.saltbay:root/fstab.saltbay \
    $(LOCAL_PATH)/rootdir/init.avc.rc:root/init.avc.rc \
    $(LOCAL_PATH)/rootdir/init.bt.rc:root/init.bt.rc \
    $(LOCAL_PATH)/rootdir/init.bt.vendor.rc:root/init.bt.vendor.rc \
    $(LOCAL_PATH)/rootdir/init.common.rc:root/init.common.rc \
    $(LOCAL_PATH)/rootdir/init.debug.rc:root/init.debug.rc \
    $(LOCAL_PATH)/rootdir/init.diag.rc:root/init.diag.rc \
    $(LOCAL_PATH)/rootdir/init.environ.rc:root/init.environ.rc \
    $(LOCAL_PATH)/rootdir/init.gps.rc:root/init.gps.rc \
    $(LOCAL_PATH)/rootdir/init.intel.feature.asf.rc:root/init.intel.feature.asf.rc \
    $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/init.platform.usb.7inch.rc:root/init.platform.usb.7inch.rc \
    $(LOCAL_PATH)/rootdir/init.platform.usb.8inch.rc:root/init.platform.usb.8inch.rc \
    $(LOCAL_PATH)/rootdir/init.rc:root/init.rc \
    $(LOCAL_PATH)/rootdir/init.saltbay.rc:root/init.saltbay.rc \
    $(LOCAL_PATH)/rootdir/init.trace.rc:root/init.trace.rc \
    $(LOCAL_PATH)/rootdir/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/rootdir/init.watchdog.rc:root/init.watchdog.rc \
    $(LOCAL_PATH)/rootdir/init.wifi.rc:root/init.wifi.rc \
    $(LOCAL_PATH)/rootdir/init.wifi.vendor.rc:root/init.wifi.vendor.rc \
    $(LOCAL_PATH)/rootdir/props.board.rc:root/props.board.rc \
    $(LOCAL_PATH)/rootdir/props.platform.rc:root/props.platform.rc \
    $(LOCAL_PATH)/rootdir/props.rc:root/props.rc \
    $(LOCAL_PATH)/rootdir/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/rootdir/ueventd.saltbay.rc:root/ueventd.saltbay.rc

# Key layout files
PRODUCT_COPY_FILES += \
    device/dell/saltbay/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/dell/saltbay/keylayout/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/dell/saltbay/keylayout/Virtual.kcm:system/usr/keychars/Virtual.kcm\
    device/dell/saltbay/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/dell/saltbay/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/dell/saltbay/keylayout/KEYPAD.kl:system/usr/keylayout/KEYPAD.kl \
    device/dell/saltbay/keylayout/lm49453-audio_Intel_MID_Audio_Jack.kl:system/usr/keylayout/lm49453-audio_Intel_MID_Audio_Jack.kl \
    device/dell/saltbay/keylayout/mrst_keypad.kl:system/usr/keylayout/mrst_keypad.kl
    device/dell/saltbay/keylayout/mxt224_key_0.kl:system/usr/keylayout/mrst_keypad.kl
    device/dell/saltbay/keylayout/qwerty.kl:system/usr/keylayout/mrst_keypad.kl
  
#PRODUCT_COPY_FILES += \
    device/dell/saltbay/audio/asound.conf:system/etc/asound.conf \
    device/dell/saltbay/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/dell/saltbay/audio/route_criteria.conf:system/etc/route_criteria.conf

# Bluetooth
PRODUCT_COPY_FILES += \
    device/dell/saltbay/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf
    device/dell/saltbay/bluetooth/bdroid_buildcfg.h:system/etc/bluetooth/bdroid_buildcfg.h

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

PRODUCT_COPY_FILES += \
    device/dell/saltbay/powervr.ini:system/etc/powervr.ini

# Lights
PRODUCT_PACKAGES += \
    lights.merrifield

# Opengles version 3
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.locale.language=en \
    ro.product.locale.region=GB

