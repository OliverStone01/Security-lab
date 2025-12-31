#!/bin/bash

SHARE_FOLDER="/mnt/share"

# Check if share folder exists
if [ ! -d "$SHARE_FOLDER" ]; then
        echo "Creating share folder."
        sudo mkdir -p "$SHARE_FOLDER"
fi

# Check if its mounted
if mountpoint -q "$SHARE_FOLDER"; then
        echo "Stopping Directory Share..."
        sudo umount "$SHARE_FOLDER"
else
        echo "Starting Directory Share..."
        sudo mount -t 9p -o trans=virtio share "$SHARE_FOLDER"
fi