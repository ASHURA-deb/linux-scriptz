#!/bin/bash

# NTFS Drive Mount Script for Arch Linux
# This script automatically detects and mounts your NTFS drive

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Mount point
MOUNT_POINT="/mnt/hdd"

echo -e "${YELLOW}NTFS Drive Mount Script${NC}"
echo "================================"

# Check if mount point exists, create if it doesn't
if [ ! -d "$MOUNT_POINT" ]; then
    echo -e "${YELLOW}Mount point doesn't exist. Creating $MOUNT_POINT...${NC}"
    sudo mkdir -p "$MOUNT_POINT"
fi

# Check if already mounted
if mountpoint -q "$MOUNT_POINT"; then
    echo -e "${GREEN}Drive is already mounted at $MOUNT_POINT${NC}"
    exit 0
fi

# Try to detect the NTFS partition
echo "Detecting NTFS partitions..."
NTFS_DEVICE=""

# Check common device names
for device in /dev/sda1 /dev/sdb1 /dev/sdc1 /dev/sda2 /dev/sdb2; do
    if [ -b "$device" ]; then
        # Check if it's NTFS
        FS_TYPE=$(sudo blkid -o value -s TYPE "$device" 2>/dev/null)
        if [ "$FS_TYPE" == "ntfs" ]; then
            NTFS_DEVICE="$device"
            echo -e "${GREEN}Found NTFS partition: $device${NC}"
            break
        fi
    fi
done

# If no NTFS device found, ask user
if [ -z "$NTFS_DEVICE" ]; then
    echo -e "${YELLOW}No NTFS partition auto-detected.${NC}"
    echo "Available block devices:"
    lsblk -o NAME,SIZE,TYPE,FSTYPE,MOUNTPOINT
    echo ""
    read -p "Enter device path (e.g., /dev/sda1): " NTFS_DEVICE
    
    if [ ! -b "$NTFS_DEVICE" ]; then
        echo -e "${RED}Error: $NTFS_DEVICE is not a valid block device${NC}"
        exit 1
    fi
fi

# Mount the drive
echo "Mounting $NTFS_DEVICE to $MOUNT_POINT..."
sudo mount -t ntfs-3g "$NTFS_DEVICE" "$MOUNT_POINT"

# Check if mount was successful
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Successfully mounted $NTFS_DEVICE at $MOUNT_POINT${NC}"
    echo ""
    echo "Drive contents:"
    ls -lh "$MOUNT_POINT" | head -n 10
else
    echo -e "${RED}✗ Failed to mount drive${NC}"
    exit 1
fi