#!/bin/bash
grep -iE "iptables|ufw" ${1:-auth.log} | grep -iE "add|insert|COMMAND=" | wc -l
