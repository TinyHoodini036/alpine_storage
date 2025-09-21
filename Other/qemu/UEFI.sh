#!/bin/sh

echo disk name:
read disk

echo cdrom name:
read iso

qemu-system-x86_64 -enable-kvm -bios ~/scripts/qemu/OVMF.fd -m 8192 -smp 4 -cpu host -hda $disk -nic user,hostfwd=tcp::5555-:22 -cdrom $iso -boot d &
