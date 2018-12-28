DEVICE_PATH := device/huawei/hi6620oem-common

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
#TARGET_OMIT_RECOVERY := true

# Arch
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_VARIANT := cortex-a9
TARGET_BOARD_PLATFORM := hi6620oem

# Enable dex pre-opt
WITH_DEXPREOPT := true
WITH_DEXPREOPT_PIC := true

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

TARGET_ANDROID_FILESYSTEM_CONFIG_H := $(DEVICE_PATH)/include/android_filesystem_config.h

# Common flags
COMMON_GLOBAL_CFLAGS += -DUSE_LEGACY_BLOBS -DDISABLE_ASHMEM_TRACKING
#TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# init
TARGET_IGNORE_RO_BOOT_SERIALNO := true
BOARD_CHARGING_CMDLINE_NAME := pd_charge
BOARD_CHARGING_CMDLINE_VALUE := 1

# Kernel
BOARD_KERNEL_CMDLINE := k3v2mem k3v2_ion=1 vmalloc=256M maxcpus=4 initcall_debug=n enforcing=0 androidboot.hardware=hi6620oem androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x07000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x04000000
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/zImage

# Board-specific kernel headers
TARGET_BOARD_KERNEL_HEADERS := $(DEVICE_PATH)/kernel-headers

# Filesystem
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/recovery.fstab
BOARD_CANT_BUILD_RECOVERY_FROM_BOOT_PATCH := true

# TWRP
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_EXTRA_LANGUAGES := true
TWHAVE_SELINUX := true
TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/bq_bci_battery.1/power_supply/Battery"
TW_CUSTOM_CPU_TEMP_PATH := "sys/devices/platform/hi6620-tsensor.1/acputemp"
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/share"
TW_INTERNAL_STORAGE_MOUNT := "sdcard"
TW_FLASH_FROM_STORAGE := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd_backlight0/brightness"
TW_MAX_BRIGHTNESS := 255

# HW Decoder
BOARD_DECODER_COLOR_FORMAT := RGBA_8888
#BOARD_DECODER_COLOR_FORMAT := NV12

# PostCameraService
#BOARD_USE_CUSTOM_MEDIASERVEREXTENSIONS := true

# Charger
WITH_CM_CHARGER := true
BACKLIGHT_PATH := "/sys/class/leds/lcd_backlight0/brightness"
HEALTHD_BACKLIGHT_LEVEL := 127
BOARD_HEALTHD_CUSTOM_CHARGER_RES := $(DEVICE_PATH)/charger/images

# SELinux
BOARD_SEPOLICY_DIRS += \
	device/huawei/hi6620oem-common/sepolicy

# Graphics
BOARD_EGL_CFG := $(DEVICE_PATH)/egl.cfg
USE_OPENGL_RENDERER := true
ANDROID_ENABLE_RENDERSCRIPT := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# RIL
BOARD_PROVIDES_RILD := true
BOARD_RIL_CLASS := ../../../$(DEVICE_PATH)/ril

# Wifi
BOARD_WLAN_DEVICE			:= bcmdhd
WPA_SUPPLICANT_VERSION			:= VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER		:= NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB	:= lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER			:= NL80211
BOARD_HOSTAPD_PRIVATE_LIB		:= lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM		:= "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA			:= "/system/vendor/firmware/fw_bcm4334_hw.bin"
WIFI_DRIVER_FW_PATH_AP			:= "/system/vendor/firmware/fw_bcm4334_apsta_hw.bin"

# Bluetooth
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := $(DEVICE_PATH)/bluetooth/vnd_hi6620oem.txt

# FM Radio
#BOARD_HAVE_FM_RADIO := true
#BOARD_DISABLE_FMRADIO_LIBJNI := true
#BOARD_HAVE_BCM_FM := true
#TARGET_ADDITIONAL_BOOTCLASSPATH := android.hardware.fmradio

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# CM Hardware
BOARD_HARDWARE_CLASS := $(DEVICE_PATH)/cmhw
