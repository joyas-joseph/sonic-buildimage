# Dell Z9100 and S6100 Platform modules

DELL_Z9100_PLATFORM_MODULE_VERSION = 1.1
DELL_S6100_PLATFORM_MODULE_VERSION = 1.1

export DELL_Z9100_PLATFORM_MODULE_VERSION
export DELL_S6100_PLATFORM_MODULE_VERSION

DELL_Z9100_PLATFORM_MODULE = platform-modules-z9100_$(DELL_Z9100_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_Z9100_PLATFORM_MODULE)_SRC_PATH = $(PLATFORM_PATH)/sonic-platform-modules-dell
$(DELL_Z9100_PLATFORM_MODULE)_DEPENDS += $(LINUX_HEADERS) $(LINUX_HEADERS_COMMON)
$(DELL_Z9100_PLATFORM_MODULE)_PLATFORM = x86_64-dell_z9100_c2538-r0
SONIC_DPKG_DEBS += $(DELL_Z9100_PLATFORM_MODULE)

DELL_S6100_PLATFORM_MODULE = platform-modules-s6100_$(DELL_S6100_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_S6100_PLATFORM_MODULE)_PLATFORM = x86_64-dell_s6100_c2538-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_S6100_PLATFORM_MODULE)))

SONIC_STRETCH_DEBS += $(DELL_Z9100_PLATFORM_MODULE)
