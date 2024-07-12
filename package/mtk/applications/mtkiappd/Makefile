#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=mtkiappd
PKG_VERSION:=1
PKG_RELEASE:=1

PKG_CONFIG_DEPENDS := \
	CONFIG_PACKAGE_mtkiappd_DUAL_BAND

include $(INCLUDE_DIR)/package.mk

define Package/mtkiappd
	SECTION:=MTK Properties
	CATEGORY:=MTK Properties
	TITLE:=MTK 802.11f supporting daemon
	DEPENDS:=@TARGET_mediatek
	SUBMENU:=Applications
endef

define Package/mtkiappd/description
	Mtkiappd is an optional user space component for Mediatek SoftAP driver.
endef

define Package/mtkiappd/config
config PACKAGE_mtkiappd_DUAL_BAND
        bool "Dual Band"
		default y
endef

ifeq ($(CONFIG_PACKAGE_mtkiappd_DUAL_BAND),y)
	WIRELESS_IOCTL_PARAM:=-wi ra0 -wi rax0
else
	WIRELESS_IOCTL_PARAM:=-wi ra0
endif

define Package/mtkiappd/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_DIR) $(1)/usr/share/mtkiappd

	$(INSTALL_BIN) $(PKG_BUILD_DIR)/mtkiappd $(1)/usr/sbin/
	$(INSTALL_BIN) ./files/mtkiappd.sh $(1)/etc/init.d/mtkiappd
	sed -i 's/WIRELESS_IOCTL_PARAM/$(WIRELESS_IOCTL_PARAM)/' $(1)/etc/init.d/mtkiappd
	$(INSTALL_DATA) ./files/firewall.include $(1)/usr/share/mtkiappd/
endef

$(eval $(call BuildPackage,mtkiappd))