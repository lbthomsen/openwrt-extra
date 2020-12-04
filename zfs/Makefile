include $(TOPDIR)/rules.mk
 
PKG_NAME:=zfs
#PKG_VERSION:=2.0.0
PKG_VERSION:=0.8.5
PKG_RELEASE:=1
 
PKG_BUILD_DIR:=$(BUILD_DIR)/zfs-$(PKG_VERSION)
PKG_SOURCE:=zfs-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/openzfs/zfs/releases/download/zfs-2.0.0/
PKG_SOURCE_URL:=https://github.com/openzfs/zfs/releases/download/zfs-0.8.5/
#PKG_HASH:=3403bf8e993f3c9d772f768142117df47bdbbb8e9bbf85a29c0e166f577f9311
PKG_HASH:=dbb41d6b9c606a34ac93f4c19069fd6806ceeacb558f834f8a70755dadb7cd3d
 
include $(INCLUDE_DIR)/package.mk
 
define Package/zfs
  SECTION:=Subutai
  CATEGORY:=Subutai
  TITLE:=ZFS
  URL:=http://zfsonlinux.org
  DEPENDS:=+libtirpc
  PKG_BUILD_DEPENDS:=libtirpc
endef
 
define Package/zfs/description
 ZFS
endef
 
define Build/Configure
  $(call Build/Configure/Default,--with-linux-headers=$(LINUX_DIR))
endef
 
define Package/zfs/install
	$(INSTALL_DIR) $(1)/usr/sbin
endef
 
$(eval $(call BuildPackage,zfs))

# vim: ts=4 autoindent nowrap