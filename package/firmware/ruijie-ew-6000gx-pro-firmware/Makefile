#
# Copyright (C) 2016 MediaTek
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=ruijie-ew-6000gx-pro-firmware
PKG_RELEASE:=1
PKG_LICENSE:=GPL-2.0

include $(INCLUDE_DIR)/package.mk

define Package/ruijie-ew-6000gx-pro-firmware
  SECTION:=firmware
  CATEGORY:=Firmware
  TITLE:=PHYs firmware for Ruijie EW-6000GX Pro
endef

define Package/ruijie-ew-6000gx-pro-firmware/description
  PHYs firmware for Ruijie EW-6000GX Pro.
endef

define Package/ruijie-ew-6000gx-pro-firmware/config
endef

define Build/Compile
endef

define Package/ruijie-ew-6000gx-pro-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/
	$(INSTALL_DATA) ./files/EthMD32.dm.bin $(1)/lib/firmware/
	$(INSTALL_DATA) ./files/EthMD32.DSP.bin $(1)/lib/firmware/
endef

$(eval $(call BuildPackage,ruijie-ew-6000gx-pro-firmware))
