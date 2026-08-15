#!/bin/bash
awk '{print $5}' ${1:-auth.log} | sort | uniq -c | sort -nr
