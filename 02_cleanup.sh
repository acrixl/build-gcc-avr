cd "$( dirname "${BASH_SOURCE[0]}" )"
CDIR="$(pwd)"

. settings.sh

rm -rf $BUILD_DIR/*
rm -rf $TARGET_TMP_PREFIX/*
rm -rf $SRCE_TARGET_DIR/*
rm -rf $TAR_DIR/*

