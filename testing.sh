#!/bin/sh
set -eu
cat tests.s
cat tests.s | ./a3 | xxd -r -p > code.bin
arm-none-eabi-objdump -b binary -marmv6 -D code.bin
exit 0
