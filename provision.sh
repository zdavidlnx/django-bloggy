#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive

# update package list
sudo apt update -q
sudo apt upgrade -y

sudo apt install debconf-utils

sudo apt install python3-pip -y
sudo apt install python3-dev libmysqlclient-dev libpq-dev -y

sudo -H pip3 install virtualenv

mkdir /home/vagrant/.virtualenvs

sudo -H pip3 install virtualenvwrapper
sudo -H pip3 install pipenv

# update profile
sudo cat >> /home/vagrant/.bash_profile <<'EOF'

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.6

# Virtual Env
export WORKON_HOME=~/.virtualenvs
. /usr/local/bin/virtualenvwrapper.sh

# Aliases
alias rundjango="python manage.py runserver 0.0.0.0:8000"

EOF

sudo chown vagrant:vagrant /home/vagrant/.*