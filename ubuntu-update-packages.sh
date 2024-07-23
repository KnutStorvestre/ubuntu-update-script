#!/bin/bash

# Define color variables
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'

NC='\033[0m' # No Color

# Refresh snap package list and update installed packages
echo -e "${YELLOW}Refreshing snap package list and updating installed packages...${NC}"
sudo snap refresh
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Snap packages updated successfully.${NC}"
else
    echo -e "${RED}Failed to update snap packages.${NC}"
fi

# Update apt package list and upgrade installed packages
echo -e "${YELLOW}Updating apt package list and upgrading installed packages...${NC}"
sudo apt update && sudo apt upgrade -y
if [ $? -eq 0 ]; then
    echo -e "${GREEN}APT packages updated successfully.${NC}"
else
    echo -e "${RED}Failed to update APT packages.${NC}"
fi

echo -e "${GREEN}Package update completed.${NC}"

