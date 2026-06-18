#!/bin/bash
(openssl rand -hex 8; echo -n "$1") | openssl dgst -sha512 > 3_hash.txt
