#!/bin/bash

# exit if a command fails
set -e

REPO=${REPO:-git://github.com/netsensei/workstation.git}
DIR=${CLONE_DIR:-/home/"${SUDO_USER}"/Workspace/workstation}

# preliminary packages
dnf install -y vim ansible git

# clone this repo
mkdir -p "${DIR}"
git clone --recursive "${REPO}" "${DIR}"
chown -R ${SUDO_USER}.${SUDO_USER} ${DIR}

