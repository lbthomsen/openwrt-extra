
include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk
 
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
  DEPENDS:=+libtirpc +libuuid +uuid
  PKG_BUILD_DEPENDS:=libtirpc uuid
  TARGET_CFLAGS += -DHAVE_PDE_DATA
endef
 
define Package/zfs/description
 ZFS
endef
 
define Build/Configure
  $(call Build/Configure/Default,--with-linux=$(LINUX_DIR))
endef
 
define Package/zfs/install
	$(INSTALL_DIR) $(1)/sbin
	$(INSTALL_DIR) $(1)/lib/modules/$(LINUX_VERSION)
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/module/icp/icp.ko $(1)/lib/modules/$(LINUX_VERSION)
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/module/spl/spl.ko $(1)/lib/modules/$(LINUX_VERSION)
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/module/avl/zavl.ko $(1)/lib/modules/$(LINUX_VERSION)
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/module/lua/zlua.ko $(1)/lib/modules/$(LINUX_VERSION)
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/module/nvpair/znvpair.ko $(1)/lib/modules/$(LINUX_VERSION)
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/module/unicode/zunicode.ko $(1)/lib/modules/$(LINUX_VERSION)
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/module/zcommon/zcommon.ko $(1)/lib/modules/$(LINUX_VERSION)
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/module/zfs/zfs.ko $(1)/lib/modules/$(LINUX_VERSION)
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/cmd/zpool/zpool $(1)/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/cmd/zfs/zfs $(1)/sbin
endef
 
$(eval $(call BuildPackage,zfs))

# vim: ts=4 autoindent nowrap
