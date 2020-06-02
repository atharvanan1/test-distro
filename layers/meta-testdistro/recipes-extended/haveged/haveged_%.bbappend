do_install_append() {
    sed -i -e'/^Description=/aDefaultDependencies=no' ${D}${systemd_system_unitdir}/haveged.service
    if ${@bb.utils.contains('DISTRO_FEATURES', 'sysvinit', 'true', 'false', d)}; then
        sed -e "s,@SBIN_DIR@,${sbindir},g" <${S}/init.d/sysv.redhat >${D}${INIT_D_DIR}/haveged
    fi
}
