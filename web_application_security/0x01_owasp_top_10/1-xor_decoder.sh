#!/bin/bash
if [ -z "$1" ]
then
    exit 1
fi
encoded_string="${1#\{xor\}}"
echo -n "$encoded_string" | base64 -d 2>/dev/null | perl -0777 -pe 's/(.)/chr(ord($1) ^ 95)/gse'
echo ""
