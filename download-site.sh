#!/bin/bash
read -p "Enter the website URL: " TARGET_URL && wget \
  --recursive \
  --level=5 \
  --page-requisites \
  --adjust-extension \
  --convert-links \
  --no-parent \
  --wait=2 \
  --limit-rate=100k \
  "$TARGET_URL"
