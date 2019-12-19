# Workstation

> So may books, so little time.
-- Frank Zappa

[![Software License](https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](LICENSE.md)

This repository contains script to automate the setup of a fresh installation of my personal workstation.

This project will first download and install [Ansible](https://www.ansible.com). Then it will execute the 
included Ansible playbook and perform an opinionated installation of software packages and configuration.

## Usage

Either clone the repo and run `setup.sh` or directly from Github... if you're me:

`curl -k -L https://raw.githubusercontent.com/netsensei/workstation/master/setup.sh | sudo bash`

Or just run `ansible-playbook -i hosts playbook.yml` if Ansible has already been deployed.

## Supported operating systems

Currently only supports Fedora.

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
