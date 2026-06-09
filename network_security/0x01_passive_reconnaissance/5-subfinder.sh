#!/bin/bash
subfinder -d $1 -silent | tee /dev/stderr | xargs -I {} sh -c 'echo -n "{},"; dig +short {} | tail -n1' | grep -E ',[0-9]' > $1.txt
