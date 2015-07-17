include device/qcom/msm8610/BoardConfig.mk

# Use default Gecko location if it's not provided in config files.
GECKO_PATH ?= gecko

TARGET_USES_TCT_FOTA := false
TARGET_RECOVERY_FSTAB := device/t2m/flame/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

TARGET_USES_ION := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 439877632
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2214592512
BOARD_CACHEIMAGE_PARTITION_SIZE := 75497472

# don't create SD card partition
BOARD_USBIMAGE_PARTITION_SIZE_KB :=

ENABLE_LIBRECOVERY := true
RECOVERY_EXTERNAL_STORAGE := /storage/sdcard0

TARGET_PROVIDES_INIT_RC := false

# hack to prevent llvm from building
BOARD_USE_QCOM_LLVM_CLANG_RS := true

BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/t2m/flame/bluetooth \
                                               $(GECKO_PATH)/dom/bluetooth/bluedroid
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_ATH_WLAN_AR6004 := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_MODULE_ARG := ""
WPA_SUPPLICANT_VERSION := VER_0_8_X
HOSTAPD_VERSION := VER_0_8_X
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
BOARD_HAS_CFG80211_KERNEL3_4 := true
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
