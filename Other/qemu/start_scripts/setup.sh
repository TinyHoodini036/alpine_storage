qemu-system-x86_64 -enable-kvm -m 8192 -smp 4 -cpu host -display gtk -drive file=mx_vm.img,format=raw -cdrom /home/dk/ISO/MX-23.3_x64.iso -nic user,hostfwd=tcp::5555-:22 -boot d &
