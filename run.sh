#!/bin/bash

BUILDBOT_SERVERS=()
BUILDBOT_SERVERS+=( "https://buildbot.libretro.com/nightly/android/latest/armeabi-v7a/" )
BUILDBOT_SERVERS+=( "https://buildbot.libretro.com/nightly/android/latest/armeabi/" )
BUILDBOT_SERVERS+=( "https://buildbot.libretro.com/nightly/android/latest/arm64-v8a/" )
BUILDBOT_SERVERS+=( "https://buildbot.libretro.com/nightly/linux/armhf/latest/" )

for i in "${BUILDBOT_SERVERS[@]}"
do
  echo "Cloning $i"
  wget --mirror --convert-links --adjust-extension --page-requisites --no-parent "$i"
  wget --mirror --convert-links --adjust-extension --page-requisites --no-parent "$i.index-extended"
done

