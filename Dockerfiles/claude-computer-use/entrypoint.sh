#!/bin/bash
# Initialize display
export DISPLAY=:1
export NO_AT_BRIDGE=1

# Wait for Xvfb to be ready
until xdpyinfo -display :1 > /dev/null 2>&1; do
  echo "Waiting for Xvfb..."
  sleep 1
done

# Execute the command passed to docker run
exec "$@"