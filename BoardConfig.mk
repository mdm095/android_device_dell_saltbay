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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Board
TARGET_ARCH 			:= x86
TARGET_ARCH_VARIANT 		:= x86
TARGET_CPU_VARIANT 		:= x86
TARGET_CPU_ABI 			:= x86
TARGET_CPU_ABI2 		:= armeabi-v7a
TARGET_CPU_ABI_LIST 		:= x86,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT 	:= x86,armeabi-v7a,armeabi
TARGET_CPU_SMP 			:= true
TARGET_BOARD_PLATFORM 		:= merrifield
TARGET_BOOTLOADER_BOARD_NAME 	:= saltbay
TARGET_USERIMAGES_USE_F2FS 	:= true

# Kernel CMDLINE
BOARD_KERNEL_CMDLINE         := init=/init pci=noearly console=logk0 console=ttyS0 earlyprintk=nologger code_bytes=128 loglevel=8 vmalloc=256M androidboot.hardware=saltbay androidboot.spid=xxxx:xxxx:xxxx:xxxx:xxxx:xxxx androidboot.serialno=01234567890123456789012345678901 snd_pcm.maximum_substreams=8 ptrace.ptrace_can_access=1 nmi_watchdog=panic softlockup_panic=1 ip=50.0.0.2:50.0.0.1::255.255.255.0::usb0:on
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/dell/saltbay
TARGET_KERNEL_ARCH := x86_64
BOARD_KERNEL_IMAGE_NAME := bzImage
TARGET_KERNEL_CONFIG := x86_64_mrfl_defconfig
#TARGET_KERNEL_CONFIG := cyanogenmod_x86_64_mrfl_defconfig
TARGET_PREBUILT_KERNEL := device/dell/saltbay
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/x86/x86_64-linux-android-4.9/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := x86_64-linux-android-

TARGET_DROIDBOOT_LIBS := libintel_droidboot

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/dell/saltbay/bluetooth

# Assert
TARGET_OTA_ASSERT_DEVICE := saltbay,Venue7 3740 LTE

# Partition sizes
TARGET_USERIMAGES_USE_EXT4 		:= true
BOARD_BOOTIMAGE_PARTITION_SIZE 		:= 134217728
BOARD_RECOVERYIMAGE_PARTITION_SIZE 	:= 134217728
BOARD_SYSTEMIMAGE_PARTITION_SIZE 	:= 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE 	:= 11674827776
BOARD_CACHEIMAGE_PARTITION_SIZE 	:= 1610612736
BOARD_FLASH_BLOCK_SIZE 			:= 131072
BOARD_ZRAM_SIZE				:= 268435456

TARGET_RECOVERY_FSTAB := device/dell/saltbay/rootdir/recovery.fstab

# Houdini: enable ARM codegen for x86
BUILD_ARM_FOR_X86 := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Use the non-open-source parts, if they're present
-include vendor/dell/saltbay/BoardConfigVendor.mk
