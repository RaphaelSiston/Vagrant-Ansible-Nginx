#!/bin/bash

apt update -y
hostnamectl set-hostname Projeto04

apt install ansible -y

ansible-playbook --connection=local /ansible/playbook.yml