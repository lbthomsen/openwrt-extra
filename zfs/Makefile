include $(TOPDIR)/rules.mk
 
PKG_NAME:=zfs
PKG_VERSION:=2.0.0
PKG_RELEASE:=1
 
PKG_BUILD_DIR:=$(BUILD_DIR)/zfs-$(PKG_VERSION)
PKG_SOURCE:=zfs-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/openzfs/zfs/releases/download/zfs-2.0.0/zfs-2.0.0.tar.gz
PKG_HASH:=9b7dc52656f5cbec846a7ba3299f73bd
 
include $(INCLUDE_DIR)/package.mk
 
define Package/zfs
  SECTION:=Subutai
  CATEGORY:=Subutai
  TITLE:=ZFS
  URL:=http://zfsonlinux.org
endef
 
define Package/zfs/description
 ZFS
endef
 
define Build/Configure
  $(call Build/Configure/Default,--with-linux-headers=$(LINUX_DIR))
endef
 
define Package/zfs/install
        $(INSTALL_DIR) $(1)/usr/sbin
        $(INSTALL_BIN) $(PKG_BUILD_DIR)/brctl/brctl $(1)/usr/sbin/
endef
 
$(eval $(call BuildPackage,zfs))

# vim: ts=4 autoindent nowrap
