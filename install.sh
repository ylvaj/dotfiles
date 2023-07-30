#!/bin/sh

#https://cloud.google.com/shell/docs/configuring-cloud-shell#environment_customization

sudo apt-get purge ffmpeg -y > /dev/null 2>&1
curl -sSL https://github.com/yt-dlp/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-linux64-gpl.tar.xz -o /tmp/ffmpeg-master-latest-linux64-gpl.tar.xz
tar xf /tmp/ffmpeg-master-latest-linux64-gpl.tar.xz -C /tmp
sudo mv /tmp/ffmpeg-master-latest-linux64-gpl/bin/* /usr/local/bin
sudo chmod a+rx /usr/local/bin/ffmpeg /usr/local/bin/ffplay /usr/local/bin/ffprobe
sudo rm -fr ~/ffmpeg-master-latest-linux64-gpl

sudo curl -sSL https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo curl -sSL https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/yt-dlp /usr/local/bin/youtube-dl
#echo "force-unsafe-io" | sudo tee /etc/dpkg/dpkg.cfg.d/02apt-speedup
DEBIAN_FRONTEND="noninteractive" TZ="Europe/Berlin" sudo apt-get update > /dev/null 2>&1
DEBIAN_FRONTEND="noninteractive" TZ="Europe/Berlin" sudo apt-get install -y rename \
    gawk rsync python3-pip git ncdu rename mkvtoolnix vim aria2 python3-pip \
    task-spooler mediainfo iputils-ping android-sdk-platform-tools sdkmanager > /dev/null 2>&1
#   adb android-sdk-platform-tools-common 
curl -sSL https://github.com/Backblaze/B2_Command_Line_Tool/releases/latest/download/b2-linux -o /tmp/b2
sudo install /tmp/pixeldrain /usr/local/bin
sudo install /tmp/b2 /usr/local/bin
