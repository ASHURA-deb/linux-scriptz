#!/bin/bash

# NTFS Drive Unmount Script for Arch Linux

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Mount point
MOUNT_POINT="/mnt/hdd"

echo -e "${YELLOW}NTFS Drive Unmount Script${NC}"
echo "================================"

# Check if the drive is mounted
if ! mountpoint -q "$MOUNT_POINT"; then
    echo -e "${YELLOW}No drive is mounted at $MOUNT_POINT${NC}"
    exit 0
fi

# Unmount the drive
echo "Unmounting $MOUNT_POINT..."
sudo umount "$MOUNT_POINT"

# Check if unmount was successful
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Successfully unmounted drive from $MOUNT_POINT${NC}"
else
    echo -e "${RED}✗ Failed to unmount drive${NC}"
    echo "The drive might be in use. Try closing any files or programs using it."
    exit 1
fi