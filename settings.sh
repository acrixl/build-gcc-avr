
PKG_VERSION=7.3.0-R1
PKG_NAME=toolchain-avr

GCC_VERSION=gcc-7.3.0
GCC_WGET_ADDR=http://ftp.gnu.org/gnu/gcc/$GCC_VERSION/$GCC_VERSION.tar.xz

BINUTILS_VERSION=binutils-2.30
BINUTILS_WGET_ADDR=https://ftp.gnu.org/gnu/binutils/$BINUTILS_VERSION.tar.xz

AVRLIBC_VERSION=avr-libc-2.0.0
AVRLIBC_WGET_ADDR=http://download.savannah.gnu.org/releases/avr-libc/$AVRLIBC_VERSION.tar.bz2

MPFR_VERSION=mpfr-4.0.1
MPFR_WGET_ADDR=https://ftp.gnu.org/gnu/mpfr/$MPFR_VERSION.tar.xz

GMP_VERSION=gmp-6.1.2
GMP_WGET_ADDR=https://ftp.gnu.org/gnu/gmp/$GMP_VERSION.tar.xz

MPC_VERSION=mpc-1.1.0
MPC_WGET_ADDR=https://ftp.gnu.org/gnu/mpc/$MPC_VERSION.tar.gz

ISL_VERSION=isl-0.19
ISL_WGET_ADDR=http://isl.gforge.inria.fr/$ISL_VERSION.tar.xz

CLOOG_VERSION=cloog-0.18.4
CLOOG_WGET_ADDR=https://www.bastoul.net/cloog/pages/download/count.php3?url=./$CLOOG_VERSION.tar.gz

GDB_VERSION=gdb-8.1
GDB_WGET_ADDR=https://ftp.gnu.org/gnu/gdb/$GDB_VERSION.tar.xz


SRC_TARGET_DIR=src

SRCE_TARGET_DIR=srce

BUILD_DIR=build

TARGET_TMP_PREFIX=out

TARGET_TMP_PREFIX_FULL=$TARGET_TMP_PREFIX/${PKG_NAME}_$PKG_VERSION

PATCH_DIR=patchs

TAR_DIR=tarball

TAR_NAME=${PKG_NAME}_$PKG_VERSION

PKG_PREFIX=/opt

TARGET_ARCH=avr

MAKE_OPTS=-j4


