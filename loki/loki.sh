#!/sbin/sh
#
# This leverages the loki_patch utility created by djrbliss which allows us
# to bypass the bootloader checks on jfltevzw and jflteatt
# See here for more information on loki: https://github.com/djrbliss/loki

# Dump current aboot
  dd if=/dev/block/platform/msm_sdcc.1/by-name/aboot of=/tmp/aboot.img

# lok-ify boot.img
  /tmp/loki_patch boot /tmp/aboot.img /tmp/boot.img /tmp/boot.lok

# Flash new loki'd boot.img
  dd if=/tmp/boot.lok of=/dev/block/platform/msm_sdcc.1/by-name/boot

# Cleanup
  rm /system/bin/loki_patch
  rm /system/bin/loki.sh
