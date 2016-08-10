USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make

TITLE=adobeuninstaller
REVERSE_DOMAIN=com.henrydobson
PACKAGE_VERSION=0.0.1
PAYLOAD=\
	pack-uninstaller \
	pack-script-postinstall

pack-uninstaller: l_Library_Management
	@sudo mkdir -p ${WORK_D}/Library/Management/Adobe
	@sudo ${DITTO} "Adobe Creative Cloud Cleaner Tool" ${WORK_D}/Library/Management/Adobe/
	@sudo chown -R root:wheel ${WORK_D}/Library/Management/Adobe
	@sudo chmod 600 ${WORK_D}/Library/Management/Adobe
	@sudo chmod a+x ${WORK_D}/Library/Management/Adobe/Adobe\ Creative\ Cloud\ Cleaner\ Tool
