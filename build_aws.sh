sudo podman run \
    --rm \
    -it \
    --privileged \
    --pull=newer \
    --security-opt label=type:unconfined_t \
    -v $HOME/.aws:/root/.aws:ro \
    -v $(pwd)/config.json:/config.json \
    --env AWS_PROFILE=default \
    quay.io/centos-bootc/bootc-image-builder:latest \
    --type ami \
    --aws-ami-name ucore-ami \
    --aws-bucket universal-blue-amis \
    --aws-region us-east-2 \
    ghcr.io/ublue-os/ucore:stable
