#!/bin/bash
ansible-galaxy install -r requirements.yml -p galaxy
pip3 install --user pywinrm
