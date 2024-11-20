#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="helwan-linux-dev-cinnamon"
iso_label="Helwan_dev_$(date +%Y%m)"
iso_publisher="S.M.A <https://helwan-linux.blogspot.com/>"
iso_application="Helwan Live/Rescue CD"
iso_version="$(date +%Y.%m)"
install_dir="arch"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/hel-remove-nvidia"]="0:0:755"
  ["/usr/local/bin/hel-preset"]="0:0:755"
  ["/usr/local/bin/hel-finalisation"]="0:0:755"
)
