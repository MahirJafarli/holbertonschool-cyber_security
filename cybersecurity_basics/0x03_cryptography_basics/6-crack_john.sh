#!/bin/bash
john --format=raw-sha256 "$1" | awk -F: '/raw-sha256/ {print $2}' > 6-password.txt
