include $(wildcard $(KERNEL_SRC)/$(DEVICE_MODULES_REL_DIR)/Makefile.include)

EXTRA_SYMBOLS += $(OUT_DIR)/../gta9-modules/connectivity/connfem/Module.symvers
EXTRA_SYMBOLS += $(OUT_DIR)/../gta9-modules/connectivity/common/Module.symvers
EXTRA_SYMBOLS += $(OUT_DIR)/../gta9-modules/connectivity/conninfra/Module.symvers
EXTRA_SYMBOLS += $(OUT_DIR)/../gta9-modules/connectivity/wlan/adaptor/build/connac1x/Module.symvers

WIFI_BUILD_OPTS := CONFIG_MTK_COMBO_WIFI_HIF=axi \
                   MODULE_NAME=wlan_drv_gen4m_6789 \
                   MTK_COMBO_CHIP=SOC2_1X1 \
                   WLAN_CHIP_ID=6789 \
                   MTK_ANDROID_WMT=y \
                   WIFI_IP_SET=1 \
                   MTK_ANDROID_EMI=y \
                   MTK_WLAN_SERVICE=yes

modules modules_install clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(M) $(KBUILD_OPTIONS) $(WIFI_BUILD_OPTS) KBUILD_EXTRA_SYMBOLS="$(EXTRA_SYMBOLS)" $(@)
