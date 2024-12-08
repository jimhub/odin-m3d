set -e

build_lib_arm64_release() {
    src=$1
    dst=$2
    echo $dst
    MACOSX_DEPLOYMENT_TARGET=10.13 cc -c -O2 -x objective-c -arch arm64 -DNDEBUG $src.c
    ar rcs $dst.a $src.o
}

build_lib_arm64_debug() {
    src=$1
    dst=$2
    echo $dst
    MACOSX_DEPLOYMENT_TARGET=10.13 cc -c -g -x objective-c -arch arm64 $src.c
    ar rcs $dst.a $src.o
}

# ARM + Release
build_lib_arm64_release m3d m3d_macos_arm64_release

# ARM + Debug
build_lib_arm64_debug m3d m3d_macos_arm64_debug

rm *.o
