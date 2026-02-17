#!/bin/bash

# Script to automatically update the SHA256 hash for the latest elevenlabs-cli release

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Fetching latest release information...${NC}"

# Get the latest release tag from GitHub API
LATEST_TAG=$(curl -s https://api.github.com/repos/hongkongkiwi/elevenlabs-cli/releases/latest | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')

if [ -z "$LATEST_TAG" ]; then
    echo -e "${RED}Error: Could not fetch latest release tag${NC}"
    exit 1
fi

echo -e "${GREEN}Latest release: ${LATEST_TAG}${NC}"

# Construct the tarball URL
TARBALL_URL="https://github.com/hongkongkiwi/elevenlabs-cli/archive/refs/tags/${LATEST_TAG}.tar.gz"
echo -e "${YELLOW}Downloading tarball from: ${TARBALL_URL}${NC}"

# Download and calculate SHA256
SHA256=$(curl -sL "${TARBALL_URL}" | shasum -a 256 | cut -d' ' -f1)

if [ -z "$SHA256" ]; then
    echo -e "${RED}Error: Could not calculate SHA256${NC}"
    exit 1
fi

echo -e "${GREEN}SHA256: ${SHA256}${NC}"

# Update the formula
FORMULA_FILE="Formula/elevenlabs-cli.rb"

echo -e "${YELLOW}Updating ${FORMULA_FILE}...${NC}"

# Update URL
sed -i.bak "s|url \".*\"|url \"${TARBALL_URL}\"|" "${FORMULA_FILE}"

# Update SHA256
sed -i.bak "s|sha256 \".*\"|sha256 \"${SHA256}\"|" "${FORMULA_FILE}"

# Clean up backup file
rm "${FORMULA_FILE}.bak"

echo -e "${GREEN}✅ Formula updated successfully!${NC}"
echo ""
echo "Changes made:"
echo "  - URL: ${TARBALL_URL}"
echo "  - SHA256: ${SHA256}"
echo ""
echo "You can now commit and push these changes."