#!/bin/bash
find /home /var -xdev -type d -perm -0002 -print
find /home /var -xdev -type d -perm -0002 -exec chmod o-w {} +
