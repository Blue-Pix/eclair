#!/bin/sh
vagrant destroy -f
vagrant up
ansible-playbook site.yml
