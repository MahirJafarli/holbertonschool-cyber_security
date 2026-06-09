#!/bin/bash
dig $1 A $1 AAAA $1 MX $1 TXT $1 NS $1 SOA +noall +answer
