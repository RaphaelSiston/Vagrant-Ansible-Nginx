#!/bin/bash

apt update -y
hostnamectl set-hostname Projeto04

apt install ansible -y
apt install nginx -y
service restart nginx