# This hook makes sure package versions are synchronized.

hook() {
	pwd
	for pkg in ${synchronize}; do
		ourversion=$version
		ourpackage=$pkgname
		. ${XBPS_SRCPKGDIR}/$pkg/template
		if [ "${version}" != "${ourversion}" ]; then
			msg_error "${ourpackage} and ${pkg} versions must be synchronized!\n"
		fi
	done
}
