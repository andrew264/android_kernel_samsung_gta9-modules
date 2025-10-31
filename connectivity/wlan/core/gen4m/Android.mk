LOCAL_PATH := $(call my-dir)

ifeq ($(MTK_WLAN_SUPPORT), yes)
	WLAN_CHIP_ID := 6789
	WIFI_CHIP := SOC2_1X1
	WIFI_IP_SET := 1
	CONNAC_VER :=
	WIFI_HIF := axi
	WIFI_WMT := y
	WIFI_EMI := y
	WIFI_NAME := wlan_drv_gen4m_6789
	WIFI_CHRDEV_MODULE := wmt_chrdev_wifi.ko
	include $(LOCAL_PATH)/build_wlan_drv.mk
endif
