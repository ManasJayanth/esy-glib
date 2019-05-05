GETTEXT_PREFIX=$1

cat >$cur__install/lib/pkgconfig/glib-2.0.pc <<EOF
prefix=${cur__install}
libdir=\${prefix}/lib
includedir=\${prefix}/include

bindir=\${prefix}/bin
glib_genmarshal=\${bindir}/glib-genmarshal
gobject_query=\${bindir}/gobject-query
glib_mkenums=\${bindir}/glib-mkenums

Name: GLib
Description: C Utility Library
Version: 2.61.0
Libs: -L\${libdir} -lglib-2.0 -L${GETTEXT_PREFIX}/lib -lintl
Libs.private: -Wl,-framework,CoreFoundation -Wl,-framework,Carbon -Wl,-framework,Foundation -Wl,-framework,AppKit -liconv
Cflags: -I\${includedir}/glib-2.0 -I\${libdir}/glib-2.0/include -I${GETTEXT_PREFIX}/include
EOF


# Requires.private: libpcre >=  8.31
