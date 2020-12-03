#
# Subutai Router
#

include $(TOPDIR)/rules.mk

PKG_NAME:=subutai-router
PKG_VERSION:=0.0.1
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/subutai-router-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/subutai-router
  SECTION:=Subutai
  CATEGORY:=Subutai
  TITLE:=Subutai Router
  DEPENDS:=+base-files +firewall
endef

define Package/subutai-router/description
  Meta package for Subutai Router installation.
endef

define Build/Compile
        # NOOP
endef

define Package/subutai-router/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,subutai-router))

# vim: ts=4 nowrap autoindent
