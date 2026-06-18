#!/bin/bash
openssl dgst -sha512 -out 3_hash.txt <<< "$1"
