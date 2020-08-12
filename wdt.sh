#!/bin/bash

# Commands to be executed before the prompt is displayed
# Save the current working directory
PROMPT_COMMAND='pwd > "/dev/shm/.cwd"'

# Change to saved working directory
[[ -f "/dev/shm/.cwd" ]] && cd "$(< /dev/shm/.cwd)"
