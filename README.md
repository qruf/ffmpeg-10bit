# ffmpeg-10bit

ffmpeg binaries for Windows with 10-bit x264 and high-bit-depth x265 and libvpx.

The binaries are compiled with the following options:

    --enable-avisynth --enable-dxva2 --enable-bzlib --enable-fontconfig --enable-gmp --enable-gnutls
    --enable-iconv --enable-libass --enable-libbluray --enable-libfreetype --enable-libfribidi
    --enable- libmp3lame --enable-libopus --enable-libvorbis --enable-libvpx --enable-libx264
    --enable-libx265 --enable-libzimg --enable-lzma --enable-zlib 

*Note: x265 is only enabled in 64-bit builds.*

The binaries are built with [ffmpeg-mingw](https://github.com/qruf/ffmpeg-mingw).

