#!/bin/bash

if [ "$EUID" -ne 0 ]; then
   echo "Please run as root or using sudo."
   exit 1
fi

last -n 5
