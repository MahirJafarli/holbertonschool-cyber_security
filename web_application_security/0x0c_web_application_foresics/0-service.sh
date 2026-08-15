#!/bin/bash
grep -oP '\b[a-zA-Z_]+(?=\[\d+\]:)' $1 | sort | uniq -c | sort -nr
