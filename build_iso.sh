## For testing the fedora-bootc image that they use upstream
# sudo rm -rf ./output
# mkdir ./output
# sudo podman run \
#     --rm \
#     -it \
#     --privileged \
#     --pull=newer \
#     --security-opt label=type:unconfined_t \
#     -v $(pwd)/config.json:/config.json \
#     -v $(pwd)/output:/output \
#     quay.io/centos-bootc/bootc-image-builder:latest \
#     --config /config.json \
#     --type iso \
#     quay.io/centos-bootc/fedora-bootc:eln

## Example of running a local podman container environment
# sudo podman run \
#     --rm \
#     -it \
#     --privileged \
#     --pull=newer \
#     --net=host \
#     --security-opt label=type:unconfined_t \
#     -v $(pwd)/output:/output \
#     quay.io/centos-bootc/bootc-image-builder:latest \
#     --type iso \
#     --tls-verify=false \
#     localhost:5000/silverblue-smoketest:latest

## Useful for just spitting out an ISO
sudo rm -rf ./output
mkdir ./output
sudo podman run \
    --rm \
    -it \
    --privileged \
    --pull=newer \
    --security-opt label=type:unconfined_t \
    -v $(pwd)/config.json:/config.json \
    -v $(pwd)/output:/output \
    quay.io/centos-bootc/bootc-image-builder:latest \
    --config /config.json \
    --type iso \
    ghcr.io/ublue-os/silverblue-main:latest
