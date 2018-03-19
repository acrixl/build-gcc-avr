cd "$( dirname "${BASH_SOURCE[0]}" )"
CDIR="$(pwd)"

. settings.sh


TPREFIX=`readlink -f $TARGET_TMP_PREFIX_FULL`

mkdir -p $TPREFIX

mkdir -p $TPREFIX/usr/include

mkdir -p $BUILD_DIR/build-gcc

cd $BUILD_DIR/build-gcc

export PATH=/usr/bin:/bin

../../$SRCE_TARGET_DIR/$GCC_VERSION/configure \
 --prefix=$TPREFIX \
 --target=$TARGET_ARCH \
 --with-sysroot=$TPREFIX \
 --enable-languages=c,c++ \
 --enable-plugins \
 --enable-lto \
 --disable-libssp \
 --disable-libstdcxx-pch \
 --disable-nls \
 --disable-shared \
 --disable-threads \
 --disable-tls \
 --with-dwarf2

echo "Build gcc"

make $MAKE_OPTS
make install
