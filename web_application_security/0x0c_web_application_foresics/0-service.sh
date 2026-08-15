#!/bin/bash
grep -oP '(?<=:\s)\w+' ${1:-auth.log} | sort | uniq -c | sort -nr
