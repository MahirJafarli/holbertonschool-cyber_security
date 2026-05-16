#!/bin/bash
grep -E "^[^#]" /etc/snmp/snmpd.conf | grep "public"
