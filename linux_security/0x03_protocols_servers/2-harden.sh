#!/bin/bash
find / -type d -perm -0002 -print 2>/dev/null | xargs chmod o-w 2>/dev/null
