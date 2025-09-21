qemu-system-x86_64 -enable-kvm -m 8192 -smp 4 -cpu host -display gtk -drive file=/path/to/file,format=raw -nic user,hostfwd=tcp::5555-:22 -boot d &
