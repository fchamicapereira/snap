#!/usr/bin/bash

set -euo pipefail

WORKSPACE=/home/snap/workspace

sudo apt update
sudo apt install python3 python3-pip lsb-core -y

sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1

cd $WORKSPACE
git clone https://github.com/jafingerhut/p4-guide.git

cd p4-guide/bin/
./install-p4dev-v4.sh

echo "export BMV2=\"$WORKSPACE/p4-guide/bin/behavioral-model/\"" >> /home/snap/.zshrc
