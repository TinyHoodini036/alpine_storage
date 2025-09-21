qemu-system-x86_64 -enable-kvm -m 8192 -smp 4 -cpu host -display gtk -drive file=mx_vm.img,format=raw -nic user,hostfwd=tcp::5555-:22 -boot d &
