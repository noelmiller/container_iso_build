qemu-img create -f qcow2 disk.qcow2 50G
sudo qemu-system-x86_64 \
    -enable-kvm \
    -cpu host \
    -m 8G \
    -device virtio-net-pci,netdev=n0,mac="FE:0B:6E:22:3D:13" \
    -netdev user,id=n0,net=10.0.2.0/24,hostfwd=tcp::2222-:22 \
    -bios /usr/share/edk2/ovmf/OVMF.inteltdx.fd \
    -cdrom ./output/bootiso/install.iso \
    -drive file=./disk.qcow2
