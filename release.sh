#! /bin/sh

RELEASE="$PWD/release"
DATE=$(date +%Y%m%d)

mkdir -p "$RELEASE/tarballs"

[ ! -f release/ffmpeg-10bit_${DATE}_win32.zip ] && \
    cd i686-w64-mingw32/bin && \
    advzip -a2 "$RELEASE/ffmpeg-10bit_${DATE}_win32.zip" ffmpeg.exe && \
    cd -

[ ! -f release/ffmpeg-10bit_${DATE}_win64.zip ] && \
    cd x86_64-w64-mingw32/bin && \
    advzip -a2 "$RELEASE/ffmpeg-10bit_${DATE}_win64.zip" ffmpeg.exe && \
    cd -

if [ ! -f release/sources_${DATE}.tar ]; then
    for m in tarballs/*.tar.*; do 
        DESTNAME=${m%.*}.xz
        [ -f "$RELEASE/$DESTNAME" ] && continue
        echo "$m"
        case "$m" in
            *.tar.gz) 
                gzip -cd "$m" | xz -z9 > "$RELEASE/$DESTNAME";;
            *.tar.bz2)
                bzip2 -cd "$m" | xz -z9 > "$RELEASE/$DESTNAME";;
            *.tar.xz)
                cp $m "$RELEASE/tarballs";;
        esac
    done
    cd "$RELEASE/tarballs"
    tar cvf "$RELEASE/sources_${DATE}.tar" *.tar.xz
    cd -
fi
