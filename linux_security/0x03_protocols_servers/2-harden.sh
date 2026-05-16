#!/bin/bash
find /home /var/www -type d -perm -0002 -print -exec chmod 755 {} \; 2>/dev/null
