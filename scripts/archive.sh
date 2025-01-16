#!/bin/bash

# Set variables
URL="https://windexchange.energy.gov/projects/community-benefit-agreements"
OUTPUT_DIR="./wind_exchange_site$(date +%Y%m%d_%H%M%S)"

# Create the output directory
mkdir -p "$OUTPUT_DIR"

# Run HTTrack to archive the site
httrack "$URL" \
    -O "$OUTPUT_DIR" \
    "+*.windexchange.energy.gov/projects/community-benefit-agreements" \
    --robots=0 \
    -v \
    --depth=3 \
    --mirror \
    --disable-security-limits \
    --keep-alive

# Completion message
echo "Archiving completed! Files are saved in: $OUTPUT_DIR"
