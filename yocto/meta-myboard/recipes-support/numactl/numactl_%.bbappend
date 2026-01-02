do_install:append() {
    pc="${D}${libdir}/pkgconfig/numa.pc"
    if [ -f "$pc" ]; then
        # Remove any build-time TMPDIR/WORKDIR references from the .pc file.
        # (The QA check fails if TMPDIR/WORKDIR strings remain.)
        sed -E -i \
          -e "s|${TMPDIR}/work/.*/sysroot-destdir||g" \
          -e "s|${WORKDIR}/sysroot-destdir||g" \
          -e "s|${RECIPE_SYSROOT}||g" \
          "$pc"
    fi
}

