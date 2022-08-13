#!/usr/bin/env bash
#* adding screenshots to README.md file
for i in $(seq 1 193); do echo "![](./Screenshots/$i.png)" >> README.md; done