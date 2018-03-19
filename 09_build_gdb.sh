cd "$( dirname "${BASH_SOURCE[0]}" )"
CDIR="$(pwd)"

. settings.sh


TPREFIX=`readlink -f $TARGET_TMP_PREFIX_FULL`

mkdir -p $TPREFIX

mkdir -p $BUILD_DIR/build-gdb

cd $BUILD_DIR/build-gdb

export PATH=$TPREFIX/bin:/usr/bin:/bin

../../$SRCE_TARGET_DIR/$GDB_VERSION/configure \
 --prefix=$TPREFIX \
 --target=$TARGET_ARCH \
 --disable-nls


echo "Build gdb"

make $MAKE_OPTS
make install
