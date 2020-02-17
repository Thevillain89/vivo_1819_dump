#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:39445392:b05582997d97a09d63cb102246e75b468b6b98c3; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:39445392:d93b413e9c39c3027481fe9020c8a83d8ee57fe7 EMMC:/dev/block/platform/bootdevice/by-name/recovery b05582997d97a09d63cb102246e75b468b6b98c3 39445392 d93b413e9c39c3027481fe9020c8a83d8ee57fe7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
