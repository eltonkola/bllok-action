#!/bin/sh

# Trust the GitHub workspace directory to avoid 'dubious ownership' errors
git config --global --add safe.directory /github/workspace

# Optional: trust all subdirectories (for extra safety if working in subfolders)
find /github/workspace -type d -exec git config --global --add safe.directory {} \;

# Then run your app
exec java -jar /app/bllok.jar "$INPUT_TEMPLATE" "$INPUT_INPUT" "$INPUT_OUTPUT" "$INPUT_ROOTPATH"
