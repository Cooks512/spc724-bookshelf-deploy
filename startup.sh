#!/bin/bash
set -e
exec > >(tee /var/log/startup.log) 2>&1
echo "Starting startup script at $(date)"
echo "Updating package lists..." > /tmp/hello.txt
echo "Done at $(date)"