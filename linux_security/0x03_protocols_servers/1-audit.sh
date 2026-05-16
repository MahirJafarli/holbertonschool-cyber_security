#!/bin/bash
sshd -T | grep -iwFf <(grep -E "^[^#]" /etc/ssh/sshd_config | awk '{print $1}')
