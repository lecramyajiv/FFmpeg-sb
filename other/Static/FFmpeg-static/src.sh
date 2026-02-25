#!/bin/bash


mkdir -pv /tmp/ffsrc
export FFSRC=${FFSRC:-/tmp/ffsrc}

cmakver=3.31.3 # Cmake
ffmpegver=7.1 # FFmpeg
bzipver=1.0.8 # Bzip2
zlibver=1.3.1 # zlib
gmpver=6.3.0 # Gmp
xzver=5.6.2  # Xz and LZMA
arbver=1.0.3  # aribb24
arbcver=1.1.1 # aribbcaption
fdkver=2.0.3 # fdk-aac
amrver=0.1.6 # opencore-amr
voamrver=0.1.3 #vo-amrwbenc
xavs2ver=1.4 # xavs2
lamever=3.100 #LAME
xml2ver=2.11.9 # libxml2
dnaver=6.1.1 # libdvdnav
dvrver=6.1.3 # libdvdread
x265ver=4.0 # x265
ftver=2.13.3 # Freetype2
fbidiver=1.0.16 # Fribidi
focver=2.15.0 # Fontconfig
hbuzver=9.0.0 # Harfbuzz
mesver=1.6.1 # meson
cmver=3.31.3 # cmake
ninver=1.12.1 # ninja
expver=2.6.4 # Expat
brotver=1.1.0 # Brotli
oggver=1.3.5 # Ogg
vorbver=1.3.7 # Vorbis
opusver=1.5.2 # Opus
gsmver=1.0.22 #  libgsm
pngver=1.6.44 # png
apngver=1.6.44 # apng [animated png]
jptver=3.1.0    # libjpeg-turbo
tiffver=4.7.0  # libtiff
sdlver=2.30.6 # SDL
theover=1.1.1 # Theora
celtver=0.11.3 # Celt
speexver=1.2.1 # speex
twolver=0.4.0 # Twolame
xvidver=1.3.7 # xvidcore
lpcver=0.5 # LPcnet
codver=1.2.0  # Codec2
bluver=1.3.4 # Bluray
caver=0.99.beta19 # libcaca
vmafver=3.0.0 # libvmaf
aomver=3.11.0 # aom
aacsver=0.11.0 # libaacs
yuvver=0.0.1899.20250103-1 # libyuv
yuv=libyuv-debian  # yuv name
svtnam=${svtnam:-SVT-AV1-v2.3.0}  # svt-av1
rawver=2.1.2 # libraw1394
avcver=0.5.4 # libavc1394
dcver=2.2.7 # libdc1394
iecver=1.2.0 # libiec61883
gmever=0.6.3 # libgme
daver=1.5.0 # libdav1d
ilbver=3.0.4 # libilbc
ojver=2.5.3 # openjpeg2
lcmver=2.16 # lcms2
snaver=1.2.1 # snappy
srver=1.5.4 # srt
usbver=1.0.27 # libusb
webpver=1.5.0 # libwebp
vpxver=1.15.0 # libvpx
tlsver=4.0.0 # libressl
drmver=2.4.124 # libdrm
vaaver=2.22.0 # libva
intv=intel-vaapi-driver  # name for intel vaapi dirver for haswell and below i.e 4th and below
vdriver=2.4.1 # intel vaapi driver version
vdpaver=1.5 # libvdpau
vplver=2.14.0 # libvpl
ohver=2.5.0 # openh264
fftver=3.3.10 # fftw
numaver=2.0.19 # numactl


# Binary Downloads

wget --content-disposition https://github.com/Kitware/CMake/releases/download/v3.31.3/cmake-3.31.3-linux-x86_64.tar.gz -O $FFSRC/cmake-$cmakver-linux-x86_64.tar.gz
wget --content-disposition https://github.com/ninja-build/ninja/releases/download/v1.12.1/ninja-linux.zip -O $FFSRC/ninja-linux.zip

# Source Downloads

wget --content-disposition https://www.sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz -O $FFSRC/bzip2-$bzipver.tar.gz
wget --content-disposition https://zlib.net/fossils/zlib-1.3.1.tar.gz -O $FFSRC/zlib-$zlibver.tar.gz
wget --content-disposition https://github.com//tukaani-project/xz/releases/download/v5.6.2/xz-5.6.2.tar.xz -O $FFSRC/xz-$xzver.tar.xz
wget --content-disposition https://ftp.gnu.org/gnu/gmp/gmp-6.3.0.tar.xz -O $FFSRC/gmp-$gmpver.tar.xz
wget --content-disposition https://github.com/nkoriyama/aribb24/archive/v1.0.3/aribb24-1.0.3.tar.gz -O $FFSRC/aribb24-$arbver.tar.gz
wget --content-disposition https://github.com/xqq/libaribcaption/archive/v1.1.1/libaribcaption-1.1.1.tar.gz -O $FFSRC/libaribcaption-$arbcver.tar.gz
wget --content-disposition https://github.com/adah1972/libunibreak/releases/download/libunibreak_6_1/libunibreak-6.1.tar.gz -O $FFSRC/libunibreak-6.1.tar.gz
wget --content-disposition https://downloads.sourceforge.net/lame/lame-3.100.tar.gz -O $FFSRC/lame-3.100.tar.gz
wget --content-disposition https://github.com/mstorsjo/fdk-aac/archive/v2.0.3/fdk-aac-2.0.3.tar.gz -O $FFSRC/fdk-aac-2.0.3.tar.gz
wget --content-disposition http://downloads.sourceforge.net/opencore-amr/opencore-amr-0.1.6.tar.gz -O $FFSRC/opencore-amr-0.1.6.tar.gz
wget --content-disposition https://downloads.sourceforge.net/sourceforge/opencore-amr/vo-amrwbenc/vo-amrwbenc-0.1.3.tar.gz -O $FFSRC/vo-amrwbenc-0.1.3.tar.gz
wget --content-disposition https://github.com/fribidi/fribidi/archive/v1.0.16/fribidi-1.0.16.tar.gz -O $FFSRC/fribidi-1.0.16.tar.gz
wget --content-disposition https://downloads.sourceforge.net/freetype/freetype-2.13.3.tar.xz -O $FFSRC/freetype-2.13.3.tar.xz
wget --content-disposition https://www.freedesktop.org/software/fontconfig/release/fontconfig-2.15.0.tar.xz -O $FFSRC/fontconfig-2.15.0.tar.xz
wget --content-disposition https://github.com/harfbuzz/harfbuzz/releases/download/9.0.0/harfbuzz-9.0.0.tar.xz -O $FFSRC/harfbuzz-9.0.0.tar.xz
wget --content-disposition https://github.com/adah1972/libunibreak/releases/download/libunibreak_6_1/libunibreak-6.1.tar.gz -O $FFSRC/libunibreak-6.1.tar.gz
wget --content-disposition https://github.com/libass/libass/releases/download/0.17.3/libass-0.17.3.tar.xz -O $FFSRC/libass-0.17.3.tar.xz
wget --content-disposition https://files.pythonhosted.org/packages/source/m/meson/meson-1.6.1.tar.gz -O $FFSRC/meson-1.6.1.tar.gz
wget --content-disposition https://github.com/libexpat/libexpat/releases/download/R_2_6_4/expat-2.6.4.tar.xz -O /tmp/ffsrc/expat-2.6.4.tar.xz
wget --content-disposition https://github.com/google/brotli/archive/v1.1.0/brotli-1.1.0.tar.gz -O $FFSRC/brotli-1.1.0.tar.gz
wget --content-disposition https://downloads.xiph.org/releases/ogg/libogg-1.3.5.tar.xz -O $FFSRC/libogg-$oggver.tar.xz
wget --content-disposition https://downloads.xiph.org/releases/vorbis/libvorbis-1.3.7.tar.xz -O $FFSRC/libvorbis-$vorbver.tar.xz
wget --content-disposition https://downloads.xiph.org/releases/opus/opus-1.5.2.tar.gz -O $FFSRC/opus-$opusver.tar.gz
wget --content-disposition https://www.quut.com/gsm/gsm-1.0.22.tar.gz -O $FFSRC/gsm-$gsmver.tar.gz
wget --content-disposition https://downloads.sourceforge.net/libpng/libpng-1.6.44.tar.xz -O $FFSRC/libpng-1.6.44.tar.xz
wget --content-disposition https://downloads.sourceforge.net/sourceforge/libpng-apng/libpng-1.6.44-apng.patch.gz -O $FFSRC/libpng-1.6.44-apng.patch.gz
wget --content-disposition https://github.com/libjpeg-turbo/libjpeg-turbo/archive/3.1.0/libjpeg-turbo-3.1.0.tar.gz -O $FFSRC/libjpeg-turbo-3.1.0.tar.gz
wget --content-disposition https://github.com/libjpeg-turbo/libjpeg-turbo/archive/3.0.4/libjpeg-turbo-3.0.4.tar.gz -O $FFSRC/libjpeg-turbo-3.0.4.tar.gz
wget --content-disposition https://download.osgeo.org/libtiff/tiff-4.7.0.tar.xz -O $FFSRC/tiff-4.7.0.tar.xz
wget --content-disposition https://www.libsdl.org/release/SDL2-2.30.6.tar.gz -O $FFSRC/SDL2-2.30.6.tar.gz
wget --content-disposition http://downloads.xiph.org/releases/theora/libtheora-1.1.1.tar.bz2 -O $FFSRC/libtheora-1.1.1.tar.bz2
wget --content-disposition https://gitlab.xiph.org/xiph/speex/-/archive/Speex-1.2.1/speex-Speex-1.2.1.tar.gz -O /tmp/ffsrc/speex-speex-1.2.1.tar.gz
wget --content-disposition https://github.com/njh/twolame/releases/download/0.4.0/twolame-0.4.0.tar.gz -O $FFSRC/twolame-$twolver.tar.gz
wget --content-disposition https://downloads.xvid.com/downloads/xvidcore-1.3.7.tar.gz -O $FFSRC/xvidcore-$xvidver.tar.gz
wget --content-disposition https://github.com/drowe67/LPCNet/archive/v0.5/LPCNet-$lpcver.tar.gz -O $FFSRC/LPCNet-$lpcver.tar.gz
wget --content-disposition https://github.com/drowe67/codec2/archive/1.2.0/codec2-$codver.tar.gz -O $FFSRC/codec2-$codver.tar.gz
wget --content-disposition https://github.com/Netflix/vmaf/archive/v3.0.0/vmaf-$vmafver.tar.gz -O $FFSRC/vmaf-$vmafver.tar.gz
wget --content-disposition http://deb.debian.org/debian/pool/main/a/aom/aom_3.11.0.orig.tar.gz -O $FFSRC/aom_3.11.0.orig.tar.gz
wget --content-disposition https://github.com/HandBrake/HandBrake-contribs/releases/download/contribs2/$svtnam.tar.gz -O $FFSRC/$svtnam.tar.gz
wget --content-disposition https://www.ffmpeg.org/releases/ffmpeg-7.1.tar.xz -O $FFSRC/ffmpeg-7.1.tar.xz
wget --content-disposition https://github.com/TimothyGu/libilbc/archive/v3.0.4/libilbc-3.0.4.tar.gz -O $FFSRC/libilbc-$ilbver.tar.gz
wget --content-disposition https://github.com/uclouvain/openjpeg/archive/v2.5.3/openjpeg-2.5.3.tar.gz -O $FFSRC/openjpeg-$ojver.tar.gz
wget --content-disposition https://github.com/mm2/Little-CMS/releases/download/lcms2.16/lcms2-2.16.tar.gz -O $FFSRC/lcms2-$lcmver.tar.gz
wget --content-disposition https://github.com/google/snappy/archive/1.2.1/snappy-1.2.1.tar.gz -O $FFSRC/snappy-$snaver.tar.gz
wget --content-disposition https://github.com/Haivision/srt/archive/v1.5.4/srt-v1.5.4.tar.gz -O $FFSRC/srt-$srver.tar.gz
wget --content-disposition https://github.com/webmproject/libwebp/archive/v1.5.0/libwebp-1.5.0.tar.gz -O $FFSRC/libwebp-$webpver.tar.gz
wget --content-disposition https://github.com/webmproject/libvpx/archive/v1.15.0/libvpx-1.15.0.tar.gz -O $FFSRC/libvpx-$vpxver.tar.gz
wget --content-disposition https://ftp.openbsd.org/pub/OpenBSD/LibreSSL/libressl-4.0.0.tar.gz -O $FFSRC/libressl-$tlsver.tar.gz
wget --content-disposition https://dri.freedesktop.org/libdrm/libdrm-2.4.124.tar.xz -O $FFSRC/libdrm-$drmver.tar.xz
wget --content-disposition https://github.com/intel/libva/archive/2.22.0/libva-2.22.0.tar.gz -O $FFSRC/libva-$vaaver.tar.gz
wget --content-disposition https://github.com/intel/libvpl/archive/refs/tags/v2.14.0/libvpl-2.14.0.tar.gz -O $FFSRC/libvpl-$vplver.tar.gz
wget --content-disposition https://github.com/cisco/openh264/archive/v2.5.0/openh264-2.5.0.tar.gz -O $FFSRC/openh264-$ohver.tar.gz
wget --content-disposition https://github.com/numactl/numactl/releases/download/v2.0.19/numactl-2.0.19.tar.gz -O $FFSRC/numactl-$numaver.tar.gz
wget --content-disposition https://bitbucket.org/multicoreware/x265_git/downloads/x265_4.0.tar.gz -O $FFSRC/x265_4.0.tar.gz
wget --content-disposition https://github.com/TimothyGu/libilbc/archive/v3.0.4/libilbc-3.0.4.tar.gz -O $FFSRC/libilbc-3.0.4.tar.gz
wget --content-disposition https://github.com/abseil/abseil-cpp/archive/20211102.0/abseil-cpp-20211102.0.tar.gz -O $FFSRC/abseil-cpp-20211102.0.tar.gz
wget --content-disposition https://downloads.sourceforge.net/project/soxr/soxr-0.1.3-Source.tar.xz -O $FFSRC/soxr-0.1.3-Source.tar.xz
wget --content-disposition http://downloads.sourceforge.net/modplug-xmms/libmodplug-0.8.9.0.tar.gz -O $FFSRC/libmodplug-0.8.9.0.tar.gz
wget --content-disposition http://sourceforge.net/projects/zapping/files/zvbi/0.2.35/zvbi-0.2.35.tar.bz2 -O $FFSRC/zvbi-0.2.35.tar.bz2
wget --content-disposition https://github.com/zeromq/libzmq/releases/download/v4.3.5/zeromq-4.3.5.tar.gz -O $FFSRC/zeromq-4.3.5.tar.gz
wget --content-disposition https://github.com/HandBrake/HandBrake-contribs/releases/download/contribs/zimg-3.0.5.tar.gz -O $FFSRC/zimg-3.0.5.tar.gz
wget --content-disposition https://bitbucket.org/mpyne/game-music-emu/downloads/game-music-emu-0.6.3.tar.xz -O $FFSRC/game-music-emu-$gmever.tar.xz
wget --content-disposition https://github.com/ultravideo/kvazaar/archive/v2.3.1/kvazaar-2.3.1.tar.gz -O $FFSRC/kvazaar-2.3.1.tar.gz
wget --content-disposition http://ftpmirror.gnu.org/libmicrohttpd/libmicrohttpd-0.9.75.tar.gz -O $FFSRC/libmicrohttpd-0.9.75.tar.gz
wget --content-disposition https://code.videolan.org/videolan/libplacebo/-/archive/v7.349.0/libplacebo-v7.349.0.tar.gz -O $FFSRC/libplacebo-v7.349.0.tar.gz
wget --content-disposition https://github.com/PortAudio/portaudio/archive/v19.7.0/portaudio-19.7.0.tar.gz -O $FFSRC/portaudio-19.7.0.tar.gz
wget --content-disposition https://lib.openmpt.org/files/libopenmpt/src/libopenmpt-0.7.2+release.autotools.tar.gz -O $FFSRC/libopenmpt-0.7.2+release.autotools.tar.gz
wget --content-disposition https://github.com/fraunhoferhhi/vvenc/archive/v1.13.0/vvenc-1.13.0.tar.gz -O $FFSRC/vvenc-1.13.0.tar.gz
wget --content-disposition https://www.kernel.org/pub/linux/libs/ieee1394/libraw1394-2.1.2.tar.gz -O $FFSRC/libraw1394-$rawver.tar.gz
wget --content-disposition https://downloads.sourceforge.net/libavc1394/libavc1394-0.5.4.tar.gz -O $FFSRC/libavc1394-$avcver.tar.gz
wget --content-disposition https://downloads.sourceforge.net/libdc1394/libdc1394-2.2.7.tar.gz -O $FFSRC/libdc1394-$dcver.tar.gz
wget --content-disposition https://www.kernel.org/pub/linux/libs/ieee1394/libiec61883-1.2.0.tar.gz -O $FFSRC/libiec61883-$iecver.tar.gz
wget --content-disposition https://download.gnome.org/sources/libxml2/2.11/libxml2-2.11.9.tar.xz -O $FFSRC/libxml2-2.11.9.tar.xz
wget --content-disposition http://deb.debian.org/debian/pool/main/libd/libdvdread/libdvdread_6.1.3.orig.tar.bz2 -O $FFSRC/libdvdread-6.1.3.tar.bz2
wget --content-disposition http://deb.debian.org/debian/pool/main/libd/libdvdnav/libdvdnav_6.1.1.orig.tar.bz2 -O $FFSRC/libdvdnav-6.1.1.tar.bz2
wget --content-disposition https://code.videolan.org/videolan/libbluray/-/archive/master/libbluray-master.tar.gz -O $FFSRC/libbluray-master.tar.gz
wget --content-disposition https://code.videolan.org/rist/librist/-/archive/v0.2.11/librist-v0.2.11.tar.gz -O $FFSRC/librist-v0.2.11.tar.gz
wget --content-disposition https://code.videolan.org/videolan/dav1d/-/archive/1.5.0/dav1d-1.5.0.tar.gz -O $FFSRC/dav1d-$daver.tar.gz
wget --content-disposition https://code.videolan.org/videolan/x264/-/archive/master/x264-master.tar.bz2 -O $FFSRC/x264-master.tar.bz2
wget --content-disposition https://files.pythonhosted.org/packages/source/p/packaging/packaging-24.2.tar.gz -O $FFSRC/packaging-24.2.tar.gz
wget --content-disposition https://files.pythonhosted.org/packages/source/s/setuptools/setuptools-75.6.0.tar.gz -O $FFSRC/setuptools-75.6.0.tar.gz
wget --content-disposition https://github.com/Dav1dde/glad/archive/v2.0.8/glad-2.0.8.tar.gz -O $FFSRC/glad-2.0.8.tar.gz
wget --content-disposition https://github.com/glfw/glfw/archive/3.4/glfw-3.4.tar.gz -O $FFSRC/glfw-3.4.tar.gz
wget --content-disposition https://code.videolan.org/videolan/libudfread/-/archive/master/libudfread-master.tar.gz -O $FFSRC/libudfread-master.tar.gz
wget --content-disposition https://github.com/weidai11/cryptopp/archive/CRYPTOPP_8_9_0/cryptopp-CRYPTOPP_8_9_0.tar.gz -O $FFSRC/cryptopp-CRYPTOPP_8_9_0.tar.gz
wget --content-disposition http://sourceforge.net/projects/bs2b/files/libbs2b/3.1.0/libbs2b-3.1.0.tar.bz2 -O $FFSRC/libbs2b-3.1.0.tar.bz2
wget --content-disposition https://github.com/google/highway/archive/1.2.0/highway-1.2.0.tar.gz -O $FFSRC/highway-1.2.0.tar.gz
wget --content-disposition https://github.com/libjxl/libjxl/archive/v0.11.1/libjxl-0.11.1.tar.gz -O $FFSRC/libjxl-0.11.1.tar.gz

# Need rework

#wget --content-disposition https://github.com/vapoursynth/vapoursynth/archive/R70/vapoursynth-R70.tar.gz -O $FFSRC/vapoursynth-R70.tar.gz
#wget --content-disposition https://github.com/gpac/gpac/archive/refs/tags/v2.4.0/gpac-2.4.0.tar.gz -O $FFSRC/gpac-2.4.0.tar.gz
#wget --content-disposition https://github.com/AviSynth/AviSynthPlus/archive/v3.7.3/AviSynthPlus-3.7.3.tar.gz -O $FFSRC/AviSynthPlus-3.7.3.tar.gz
#wget --content-disposition https://github.com/xiph/flac/archive/1.4.3/flac-1.4.3.tar.gz -O $FFSRC/flac-1.4.3.tar.gz
#wget --content-disposition http://deb.debian.org/debian/pool/main/m/mpg123/mpg123_1.32.10.orig.tar.xz -O $FFSRC/mpg123-1.32.10.tar.xz
#wget --content-disposition http://deb.debian.org/debian/pool/main/libs/libsndfile/libsndfile_1.2.2.orig.tar.gz -O $FFSRC/libsndfile-1.2.2.tar.gz
# wget --content-disposition http://www.ladspa.org/download/ladspa_sdk_1.17.tgz -O $FFSRC/ladspa_sdk_1.17.tgz
# wget --content-disposition https://gitlab.freedesktop.org/vdpau/libvdpau/-/archive/1.5/libvdpau-1.5.tar.bz2 -O $FFSRC/libvdpau-$vdpaver.tar.bz2
#wget --content-disposition https://download.gnome.org/sources/libxml2/2.13/libxml2-2.13.5.tar.xz -O $FFSRC/libxml2-2.13.5.tar.xz
# wget --content-disposition https://www.fftw.org/fftw-3.3.10.tar.gz -O $FFSRC/fftw-$fftver.tar.gz
#wget --content-disposition http://deb.debian.org/debian/pool/main/liby/libyuv/${yuv}_${yuvver}.orig.tar.xz -O $FFSRC/${yuv}_${yuvver}.orig.tar.xz
#wget --content-disposition https://github.com/libusb/libusb/releases/download/v1.0.27/libusb-1.0.27.tar.bz2 -O $FFSRC/libusb-$usbver.tar.bz2
#wget --content-disposition http://ftp.videolan.org/pub/videolan/libaacs/0.11.0/libaacs-$aacsver.tar.bz2 -O $FFSRC/libaacs-$aacsver.tar.bz2
#wget --content-disposition https://download.videolan.org/pub/videolan/libbluray/1.3.4/libbluray-$bluver.tar.bz2 -O $FFSRC/libbluray-$bluver.tar.bz2
#wget --content-disposition http://caca.zoy.org/files/libcaca/libcaca-$caver.tar.gz -O $FFSRC/libcaca-$caver.tar.gz
#wget --content-disposition https://www.kernel.org/pub/linux/libs/ieee1394/libraw1394-2.1.2.tar.gz -O $FFSRC/libraw1394-$rawver.tar.gz
#wget --content-disposition https://downloads.sourceforge.net/libavc1394/libavc1394-0.5.4.tar.gz -O $FFSRC/libavc1394-$avcver.tar.gz
#wget --content-disposition https://downloads.sourceforge.net/libdc1394/libdc1394-2.2.7.tar.gz -O $FFSRC/libdc1394-$dcver.tar.gz
#wget --content-disposition https://www.kernel.org/pub/linux/libs/ieee1394/libiec61883-1.2.0.tar.gz -O $FFSRC/libiec61883-$iecver.tar.gz
#
#wget --content-disposition https://github.com/intel/intel-vaapi-driver/releases/download/2.4.1/$intv-$vdriver.tar.bz2 -O $FFSRC/$intv-$vdriver.tar.bz2
#wget --content-disposition https://github.com/lu-zero/mfx_dispatch/archive/1.35.1/mfx_dispatch-$mfxver.tar.gz -O $FFSRC/mfx_dispatch-$mfxver.tar.gz
#wget --content-disposition https://github.com/KhronosGroup/Vulkan-Headers/archive/v1.4.304/Vulkan-Headers-1.4.304.tar.gz -O $FFSRC/Vulkan-Headers-$vulkver.tar.gz
#wget --content-disposition https://github.com/KhronosGroup/Vulkan-Loader/archive/v1.4.304/Vulkan-Loader-1.4.304.tar.gz -O $FFSRC/Vulkan-Loader-$vulkver.tar.gz
#wget --content-disposition https://salsa.debian.org/debian/libyuv/-/archive/debian/$yuvver/$yuv-$yuvver.tar.gz -O $FFSRC/${yuv}-${yuvver}.tar.gz
# wget --content-disposition https://github.com/AOMediaCodec/libavif/archive/v1.1.1/libavif-1.1.1.tar.gz -O $FFSRC/libavif-1.1.1.tar.gz
