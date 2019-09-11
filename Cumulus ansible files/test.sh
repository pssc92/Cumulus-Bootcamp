#!/bin/bash

function error() {
  echo -e "\e[0;33mERROR: The Bootcamp Lab Test script failed while running the command \$BASH_COMMAND at line \$BASH_LINENO.\e[0m" >&2
}
trap error ERR

set -e

echo "############################"
echo "     STARTING LAB 1"
echo "############################"
ansible-playbook ./lab1.yml
ansible-playbook ./lab1.yml --skip-tags=wipe

echo "############################"
echo "     STARTING LAB 2"
echo "############################"
ansible-playbook ./lab2.yml
ansible-playbook ./lab2.yml --skip-tags=wipe

echo "############################"
echo "     STARTING LAB 3"
echo "############################"
ansible-playbook ./lab3.yml
#ansible-playbook ./lab3.yml --skip-tags=wipe

echo "############################"
echo "     STARTING LAB 4a"
echo "############################"
ansible-playbook ./lab4a.yml
#ansible-playbook ./lab4a.yml --skip-tags=wipe

echo "############################"
echo "     STARTING LAB 4b"
echo "############################"
ansible-playbook ./lab4b.yml
#ansible-playbook ./lab4b.yml --skip-tags=wipe

echo "############################"
echo "     STARTING LAB 5a"
echo "############################"
ansible-playbook ./lab5a.yml
#ansible-playbook ./lab5a.yml --skip-tags=wipe

echo "############################"
echo "     STARTING LAB 6"
echo "############################"
ansible-playbook ./lab6.yml
#ansible-playbook ./lab6.yml --skip-tags=wipe

exit 0