#!/bin/bash
hashcat -m 0 --show "$1" | awk -F: '{print $2}' > 7-password.txt
