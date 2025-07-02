#!/bin/bash

# Script: analyze-log.sh
# Description: Analyzes NGINX access logs and generates a summary report.
# Author: Juhee Lavanya 
# Usage: ./analyze-log.sh

LOG_FILE="nginx-access.log"
OUTPUT_FILE="report.txt"

if [ ! -f "$LOG_FILE" ]; then
    echo "Error: Log file '$LOG_FILE' not found!"
    exit 1
fi
{
    echo "NGINX Access Log Analysis Report"
    echo "Generated on: $(date)"
    echo "======================================="
    echo ""

    echo "Top 5 addresses with the most requests:"
    awk '{print $1}' "$LOG_FILE"|sort|uniq -c|sort -rn|head -5

    echo ""
    echo "Top 5 most requested paths:"
    awk -F\" '{print $2}' "$LOG_FILE"|awk '{print$2}'|sort|uniq -c|sort -rn|head -5

    echo ""
    echo "Top 5 response status codes:"
    awk '{print $9}' "$LOG_FILE"|sort|uniq -c|sort -rn|head -5

    echo ""
    echo "Top 5 user agents:"
    awk -F\" '{print $6}' "$LOG_FILE"|sort|uniq -c|sort -rn|head -5
} > "$OUTPUT_FILE"
