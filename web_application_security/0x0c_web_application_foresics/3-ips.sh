#!/bin/bash
grep "Accepted" ${1:-auth.log} | grep -oP '\b(?:\d{1,3}\.){3}\d{1,3}\b' | sort -u | wc -l
