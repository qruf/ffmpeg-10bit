# cross-compile triplet
HOST := x86_64-w64-mingw32

# list of packages to enable; `make list` for a full list
PKGS_ENABLE := ffmpeg-git bzlib fontconfig gmp gnutls iconv libass libbluray libfreetype libfribidi \
	libmp3lame libopus libvorbis libvpx-git libx264-git libx265-git libzimg-git lzma zlib

# package-specific options
FFMPEGOPTS := --enable-avisynth --enable-dxva2 
VPXOPTS    := --enable-vp9-highbitdepth
X264OPTS   := --bit-depth=10
X265OPTS   := -DHIGH_BIT_DEPTH=ON
