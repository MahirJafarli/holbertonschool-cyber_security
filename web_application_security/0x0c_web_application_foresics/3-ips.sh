#!/bin/bash
grep "Accepted" ${1:-auth.log} | awk '{print $11}' | sort -u | wc -l
