#!/bin/bash
set -e
set -x

export HOME=/root
export TEMP_DIR=/root/tmp

# TODO: add /opt/modulus/bin to /etc/environment

# Install nvm
mkdir -p /opt/nvm
export NVM_DIR=/opt/nvm
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.1/install.sh | bash

# TODO: rethink this
chown mop:mop /opt/nvm/nvm.sh
chmod g-w /opt/nvm/nvm.sh

npm install -g get-version
