# FFmpeg-sb

Latest version of FFmpeg slackbuild script for
Slackware stable.

FFmpeg-opt install ffmpeg to /opt.This uses the 
stable version of ffmpeg

FFmpeg-git uses the git version of ffmpeg.

The static folder contains a very experimental build 
script for Static FFmpeg based on the build script by
AlienBob.

FFMPEG7 folder contains latest stable version and its git 
version whichgets installed to /opt/ffmpeg. It also contains 
script for most of the ffmpeg dependencies and minimizes packages
maintainence.

MPV folder contains mpv media player and its frontend
mpc-qt.It also contains a script for installing dependencies
also it will install ani-cli and yt-dlp binary to watch or
download anime with mpv player. Mpv version is currently held at 
version 0.38.0 and mpc-qt version held at 23.02 last known 
version that works good in Slackware.

The slack15 folder contains ffmpeg,gstreamer and mpv for 
the slackware 15.0. 

The alienbob folder contains the vlc and ffmpeg build scripts
from Eric Hameleers
