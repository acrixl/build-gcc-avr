cd "$( dirname "${BASH_SOURCE[0]}" )"
CDIR="$(pwd)"

. settings.sh

TPREFIX=`readlink -f $TARGET_TMP_PREFIX_FULL`

BINS1=$TPREFIX/avr/bin/*
BINS2=$TPREFIX/bin/*

BINS="$BINS1 $BINS2"

for bin in $BINS ; do
 echo $bin
 strip $bin
done
