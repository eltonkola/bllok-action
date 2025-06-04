#!/bin/sh
set -e

java -jar /app/bllok.jar "$INPUT_TEMPLATE" "$INPUT_INPUT" "$INPUT_OUTPUT" "$INPUT_ROOTPATH"
