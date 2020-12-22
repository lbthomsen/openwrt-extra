
include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk
 
PKG_NAME:=zfs
PKG_VERSION:=0.8.6
PKG_RELEASE:=1
 
PKG_BUILD_DIR:=$(BUILD_DIR)/zfs-$(PKG_VERSION)
PKG_SOURCE:=zfs-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/openzfs/zfs/releases/download/${PKG_NAME}-${PKG_VERSION}/
PKG_HASH:=88db913dc07febebce5117eee1f2a83462a32266ec07acede5d6a07e9bd6a677
 
include $(INCLUDE_DIR)/package.mk
 
define Package/zfs
  SECTION:=Subutai
  CATEGORY:=Subutai
  TITLE:=ZFS
  URL:=http://zfsonlinux.org
  DEPENDS:=+libtirpc +libuuid +uuid +libblkid +libopenssl +zlib
  PKG_BUILD_DEPENDS:=libtirpc uuid zlib
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
	$(INSTALL_DIR) $(1)/lib
	$(INSTALL_DIR) $(1)/lib/modules/$(LINUX_VERSION)
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/module/icp/icp.ko $(1)/lib/modules/$(LINUX_VERSION)
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/module/spl/spl.ko $(1)/lib/modules/$(LINUX_VERSION)
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/module/avl/zavl.ko $(1)/lib/modules/$(LINUX_VERSION)
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/module/lua/zlua.ko $(1)/lib/modules/$(LINUX_VERSION)
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/module/nvpair/znvpair.ko $(1)/lib/modules/$(LINUX_VERSION)
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/module/unicode/zunicode.ko $(1)/lib/modules/$(LINUX_VERSION)
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/module/zcommon/zcommon.ko $(1)/lib/modules/$(LINUX_VERSION)
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/module/zfs/zfs.ko $(1)/lib/modules/$(LINUX_VERSION)
	$(CP) $(PKG_BUILD_DIR)/lib/libzpool/.libs/* $(1)/lib
	$(CP) $(PKG_BUILD_DIR)/lib/libuutil/.libs/* $(1)/lib
	$(CP) $(PKG_BUILD_DIR)/lib/libzfs/.libs/* $(1)/lib
	$(CP) $(PKG_BUILD_DIR)/lib/libzfs_core/.libs/* $(1)/lib
	$(CP) $(PKG_BUILD_DIR)/lib/libnvpair/.libs/* $(1)/lib
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/cmd/zpool/.libs/zpool $(1)/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/cmd/zfs/.libs/zfs $(1)/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/cmd/zdb/.libs/zdb $(1)/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/cmd/zed/.libs/zed $(1)/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/cmd/zhack/.libs/zhack $(1)/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/cmd/zstreamdump/.libs/zstreamdump $(1)/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/cmd/ztest/.libs/ztest $(1)/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/cmd/zvol_id/zvol_id $(1)/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/cmd/zgenhostid/zgenhostid $(1)/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/cmd/zvol_wait/zvol_wait $(1)/sbin
endef
 
$(eval $(call BuildPackage,zfs))

# vim: ts=4 autoindent nowrap
