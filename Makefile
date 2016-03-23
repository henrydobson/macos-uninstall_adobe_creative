USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make
TITLE=AdobeUninstaller
REVERSE_DOMAIN=com.pebbleit
PAYLOAD=\
	pack-uninstaller

pack-uninstaller: l_Library_Management
	@sudo mkdir -p ${WORK_D}/Library/Management/Adobe
	@sudo ${DITTO} "Adobe Creative Cloud Cleaner Tool" ${WORK_D}/Library/Management/Adobe/
	@sudo chown -R root:wheel ${WORK_D}/Library/Management/Adobe
	@sudo chmod -R 600 ${WORK_D}/Library/Management/Adobe
