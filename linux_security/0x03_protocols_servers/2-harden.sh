#!/bin/bash
find / -type d -perm -0002 -not -path "/proc/*" -not -path "/sys/*" -print -exec chmod o-w {} \; 2>/dev/null
