#!/bin/bash

# exit if a command fails
set -e

REPO=${REPO:-git://github.com/netsensei/workstation.git}
DIR=${CLONE_DIR:-/home/"${SUDO_USER}"/Workspace/workstation}
NO_COWSAY=${NO_COWSAY:-1}

# preliminary packages
dnf install -y vim ansible git cowsay

# clone this repo

if [[ ! -d ${DIR} ]];then
  mkdir -p "${DIR}"
  git clone --recursive "${REPO}" "${DIR}"
  chown -R ${SUDO_USER}.${SUDO_USER} ${DIR}
fi

ANSIBLE_NOCOWS=${NO_COWSAY} ANSIBLE_COW_SELECTION=tux ansible-playbook -u ${SUDO_USER} -i "${DIR}"/hosts "${DIR}"/playbook.yml
