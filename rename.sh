#!/usr/bin/env bash
#* after mv under quotes give the name of the files to be renamed
for i in *.png; do mv $i "${i}".png; done
#* with few modifications can also be used to add new sequences in the file or do something repeatedly