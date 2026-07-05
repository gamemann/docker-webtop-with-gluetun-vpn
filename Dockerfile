ARG IMG_DESKTOP_TAG="ubuntu-xfce"

# I used the Ubuntu XFCE image.
# If you decide to use a new image, ensure the install commands below are compatible with the base image you choose. For example, if you switch to a Debian-based image, you may need to change apt commands to apt-get or adjust package names.
# A full list of supported images: https://docs.linuxserver.io/images/docker-webtop/#supported-architectures
FROM lscr.io/linuxserver/webtop:${IMG_DESKTOP_TAG}

# Set environment variable to noninteractive to avoid prompts during package installation.
ENV DEBIAN_FRONTEND=noninteractive

# Install common utilities and tools.
# You can customize this list based on your needs. For example, if you want to do development work, you might add build-essential, vim, or other tools.
# Note: For larger packages, you may want to use a separate RUN command to take advantage of Docker's layer caching. This way, if you change something later in the Dockerfile, you won't have to reinstall all the packages again!
RUN apt update && apt install -y git python3 curl software-properties-common iputils-ping net-tools gpg unzip zip iproute2 tar wget