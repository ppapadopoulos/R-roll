ifndef ROLLCOMPILER
  ROLLCOMPILER = gnu
  WITHOUT_MKL = true
endif
COMPILERNAME := $(firstword $(subst /, ,$(ROLLCOMPILER)))

NAME           = sdsc-R
VERSION        = 3.2.1
RELEASE        = 0
PKGROOT        = /opt/R

SRC_SUBDIR     = R

SOURCE_NAME    = R
SOURCE_SUFFIX  = tar.gz
SOURCE_VERSION = $(VERSION)
SOURCE_PKG     = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR     = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

TAR_GZ_PKGS    = $(SOURCE_PKG)

# RPM.EXTRAS     = AutoReq:No
