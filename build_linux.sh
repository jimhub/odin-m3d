set -e

build_lib_x64_release() {
    src=$1
    dst=$2
    echo $dst
    cc -c -O2 -DNDEBUG $src.c
    ar rcs $dst.a $src.o
}

build_lib_x64_debug() {
    src=$1
    dst=$2
    echo $dst
    cc -c -g $src.c
    ar rcs $dst.a $src.o
}

# x64 + Release
build_lib_x64_release m3d m3d_linux_x64_release

# x64 + Debug
build_lib_x64_debug m3d m3d_linux_x64_debug

rm *.o
