#!/bin/bash
find / -type d -perm -0002 -print -exec chmod 775 {} \; 2>/dev/null
