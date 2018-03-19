cd "$( dirname "${BASH_SOURCE[0]}" )"
CDIR="$(pwd)"

. settings.sh

TPREFIX=`readlink -f $TARGET_TMP_PREFIX_FULL`

mkdir -p $TPREFIX

mkdir -p $BUILD_DIR/build-avrlibc

cd $BUILD_DIR/build-avrlibc

cp -f ../../$SRCE_TARGET_DIR/$AVRLIBC_VERSION/config.guess .

export PATH=$TPREFIX/bin:/usr/bin:/bin

../../$SRCE_TARGET_DIR/$AVRLIBC_VERSION/configure \
 --build=`./config.guess` \
 --host=avr \
 --prefix=$TPREFIX \
 --with-sysroot=$TPREFIX

echo "Build avrlib"

make $MAKE_OPTS
make install

