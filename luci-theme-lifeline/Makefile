#
# LifeLine Connect theme
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-theme-lifeline
PKG_VERSION:=0.0.2
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/luci-theme-lifeline-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/luci-theme-lifeline
  CATEGORY:=LuCI
  SUBMENU:=4. Themes
  TITLE:=LifeLine Connect Theme
endef

define Package/luci-theme-lifeline/description
  LifeLine Connect Luci theme
endef

define Build/Compile
        # NOOP
endef

define Package/luci-theme-lifeline/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,luci-theme-lifeline))

# vim: ts=4 nowrap autoindent
