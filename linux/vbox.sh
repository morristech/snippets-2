# VirtualBox: mount guest disk on host
sudo modprobe nbd max_part=16
sudo qemu-nbd -c /dev/nbd0 disk.vdi
sudo partprobe /dev/nbd0
sudo mkdir -p /mnt/vbox
sudo mount /dev/nbd0p1 /mnt/vbox
sudo umount /mnt/vbox
sudo qemu-nbd -d /dev/nbd0

# VirtualBox: mount shared folder on guest
sudo mount -t vboxsf -o uid=user,gid=user shared ~/shared
