#!/bin/sh -l

GREETING="Hello, $INPUT_WHO_TO_GREET!"

# Workflow command: show an annotation in the run summary
echo "::notice file=entrypoint.sh::$GREETING"

# Write outputs to the $GITHUB_OUTPUT file (not ::set-output)
echo "time=$(date)" >>"$GITHUB_OUTPUT"
