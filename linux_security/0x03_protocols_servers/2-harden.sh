#!/bin/bash
find / -type d -perm -0002 2>/dev/null | grep -E "^/(home|var)" | xargs -I {} chmod 755 {}
