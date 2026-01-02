# Fix gobject-introspection runtime loader path during GIR generation
# g-ir-scanner executes a temporary binary that must find libavahi-*.so from build tree (.libs)

GIR_EXTRA_LIBS_PATH .= ":${B}/avahi-common/.libs:${B}/avahi-client/.libs:${B}/avahi-glib/.libs:${B}/avahi-gobject/.libs"

# Fix gobject-introspection (g-ir-scanner) runtime linker path under qemu-usermode
# When Avahi-0.6 helper is executed during do_install, it must find the uninstalled
# libtool .libs from the same recipe.
GIR_EXTRA_LIBS_PATH = "\
    ${B}/avahi-common/.libs:\
    ${B}/avahi-core/.libs:\
    ${B}/avahi-client/.libs:\
    ${B}/avahi-glib/.libs:\
    ${B}/avahi-gobject/.libs \
"

do_install:prepend() {
    export GIR_EXTRA_LIBS_PATH="${GIR_EXTRA_LIBS_PATH}"
    export LD_LIBRARY_PATH="${GIR_EXTRA_LIBS_PATH}:${LD_LIBRARY_PATH}"
}

