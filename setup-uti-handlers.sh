#!/usr/bin/env bash
#
# https://developer.apple.com/library/archive/documentation/Miscellaneous/Reference/UTIRef/Articles/System-DeclaredUniformTypeIdentifiers.html
#
# Get app ID: osascript -e 'id of app "$appName"'

if ! builtin type -P "utiluti" &> /dev/null; then
  echo "This script requires utiluti (see https://github.com/scriptingosx/utiluti)."
  echo "It can be installed with brew install utiluti."
  exit 1
fi

echo "utiluti tool available. Setting up handler..."


videoPlayer="io.mpv"
echo "  video player ${videoPlayer}"
utiluti type set org.webmproject.webm ${videoPlayer}
utiluti type set public.mpeg-4 ${videoPlayer}
utiluti type set public.mpeg ${videoPlayer}
utiluti type set public.avi ${videoPlayer}
utiluti type set com.apple.quicktime-movie ${videoPlayer}
utiluti type set com.apple.m4v-video ${videoPlayer}
utiluti type set com.microsoft.windows-media-wmv ${videoPlayer}
utiluti type set public.movie ${videoPlayer}

audioPlayer="com.kv.Aural"
echo "  audio player ${audioPlayer}"
utiluti type set public.mp3 ${audioPlayer}
utiluti type set public.mpeg-4-audio ${audioPlayer}
utiluti type set public.aiff-audio ${audioPlayer}
utiluti type set public.aac-audio ${audioPlayer}
utiluti type set public.audio ${audioPlayer}
utiluti type set com.apple.m4a-audio ${audioPlayer}
utiluti type set com.microsoft.waveform-audio ${audioPlayer}
utiluti type set org.xiph.flac ${audioPlayer}

