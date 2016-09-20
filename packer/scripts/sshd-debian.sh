#!/bin/bash -eux

systemctl disable ssh.service
systemctl enable ssh.socket