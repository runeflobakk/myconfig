#!/usr/bin/env bash
#
# https://developer.apple.com/library/archive/documentation/Miscellaneous/Reference/UTIRef/Articles/System-DeclaredUniformTypeIdentifiers.html
#
# Get app ID: osascript -e 'id of app "$appName"'

if ! builtin type -P "duti" &> /dev/null; then
  echo "This script requires duti (see https://github.com/moretension/duti)."
  echo "It can be installed with brew install duti."
  exit 1
fi

echo "duti tool available. Setting up handler..."


videoPlayer="io.mpv"
echo "  video player $videoPlayer"
duti -s "$videoPlayer" org.webmproject.webm all
duti -s "$videoPlayer" public.mpeg-4 all
duti -s "$videoPlayer" public.mpeg all
duti -s "$videoPlayer" public.avi all
duti -s "$videoPlayer" com.apple.quicktime-movie all
duti -s "$videoPlayer" com.apple.m4v-video all
duti -s "$videoPlayer" com.microsoft.windows-media-wmv all
duti -s "$videoPlayer" public.movie all

audioPlayer="com.kv.Aural"
echo "  audio player $audioPlayer"
duti -s "$audioPlayer" public.mp3 all
duti -s "$audioPlayer" public.mpeg-4-audio all
duti -s "$audioPlayer" public.aiff-audio all
duti -s "$audioPlayer" public.aac-audio all
duti -s "$audioPlayer" public.audio all


