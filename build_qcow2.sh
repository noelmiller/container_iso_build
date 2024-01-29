## For testing locally built container images
# sudo podman run \
#     --rm \
#     -it \
#     --privileged \
#     --pull=newer \
#     --net=host \
#     --security-opt label=type:unconfined_t \
#     -v $(pwd)/config.json:/config.json \
#     -v $(pwd)/output:/output \
#     quay.io/centos-bootc/bootc-image-builder:latest \
#     --type qcow2 \
#     --config /config.json \
#     --tls-verify=false \
#     localhost:5000/silverblue-smoketest:latest

sudo podman run \
    --rm \
    -it \
    --privileged \
    --pull=newer \
    --security-opt label=type:unconfined_t \
    -v $(pwd)/config.json:/config.json \
    -v $(pwd)/output:/output \
    quay.io/centos-bootc/bootc-image-builder:latest \
    --type qcow2 \
    --config /config.json \
    ghcr.io/ublue-os/ucore:stable