#
# LineLine Connect
#

include $(TOPDIR)/rules.mk

PKG_NAME:=lifeline-connect
PKG_VERSION:=0.0.5
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/lifeline-connect-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/lifeline-connect
  SECTION:=LifeLine
  CATEGORY:=LifeLine
  TITLE:=LifeLine Connect
  DEPENDS:=+base-files +firewall
endef

define Package/lifeline-connect/description
  Meta package for LifeLine Connect installation
endef

define Build/Compile
        # NOOP
endef

define Package/lifeline-connect/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,lifeline-connect))

# vim: ts=4 nowrap autoindent
