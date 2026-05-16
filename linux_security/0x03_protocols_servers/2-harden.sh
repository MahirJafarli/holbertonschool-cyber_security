#!/bin/bash
find / -local -type d -perm -0002 -print -exec chmod 775 {} \; 2>/dev/null
