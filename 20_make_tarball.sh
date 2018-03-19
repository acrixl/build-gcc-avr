cd "$( dirname "${BASH_SOURCE[0]}" )"
CDIR="$(pwd)"

. settings.sh

mkdir -p $TAR_DIR

tar --checkpoint=.100 -cjf $TAR_DIR/$TAR_NAME.tar.bz2 -C $TARGET_TMP_PREFIX .

