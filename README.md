# ffmpeg-10bit

ffmpeg binaries for Windows with 10-bit x264 and high-bit-depth x265 and libvpx, compiled with the
following options:

    --enable-avisynth --enable-dxva2 --enable-bzlib --enable-fontconfig --enable-gmp --enable-gnutls
    --enable-iconv --enable-libass --enable-libbluray --enable-libfreetype --enable-libfribidi
    --enable-libmp3lame --enable-libopus --enable-libvorbis --enable-libvpx --enable-libx264
    --enable-libx265 --enable-libzimg --enable-lzma --enable-zlib 

*Note: x265 is only enabled in 64-bit builds.*

The binaries are built with [ffmpeg-mingw](https://github.com/qruf/ffmpeg-mingw).

## Feature requests

It is unlikely that any of the following will be added:

- Hardware video encoders (nvenc, libmfx etc.)
- Other software video encoders
- Audio encoders which aren't commonly used with h.264, h.265, vp8 or vp9
- Packages whose licenses prevent redistribution (so don't bother asking for fdk-aac)

If you would like a different feature to be added, or if you can make a good case for any of the
above, feel free to [file an issue](https://github.com/qruf/ffmpeg-10bit/issues).
