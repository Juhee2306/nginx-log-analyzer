#!/bin/bash

# Script: analyze-log.sh
# Description: Analyzes NGINX access logs and generates a summary report.
# Author: Juhee Lavanya
# Usage: ./analyze-log.sh

LOG_FILE="nginx-access.log"
OUTPUT_FILE="report.txt"

print_usage(){
    echo " Usage: $0 -f <log_file> [-o <output_file>]"
    echo "OPTIONS:"
    echo " -f Path to nginx access log file"
    echo " -o Output report file"
    echo " -h Show this help message"
}

validate_log_file(){
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: Log file '$LOG_FILE' not found!"
    exit 1
fi
}

get_top_ips(){
    echo "Top 5 addresses with the most requests:"
    awk '{print $1}' "$LOG_FILE"|sort|uniq -c|sort -rn|head -5
    echo ""
}
get_top_paths(){
    echo "Top 5 most requested paths:"
    awk -F\" '{print $2}' "$LOG_FILE"|awk '{print$2}'|sort|uniq -c|sort -rn|head -5
    echo ""
}
get_status_codes(){
    echo "Top 5 response status codes:"
    awk '{print $9}' "$LOG_FILE"|sort|uniq -c|sort -rn|head -5
    echo ""
}
get_user_agents(){
    echo "Top 5 user agents:"
    awk -F\" '{print $6}' "$LOG_FILE"|sort|uniq -c|sort -rn|head -5
    echo ""
}
generate_report(){
    {
       echo "NGINX Access Log Analysis Report"
       echo "Generated on: $(date)"
       echo "======================================="
       echo ""
       get_top_ips
       get_top_paths
       get_status_codes
       get_user_agents
    }> "$OUTPUT_FILE"

  echo "REPORT SAVED"
}
while getopts ":f:o:h" opt; do
    case $opt in
       f)LOG_FILE="$OPTARG" ;;
       o)OUTPUT_FILE="$OPTARG" ;;
       h)print_usage; exit 0 ;;
      /?)echo "INVALID OPTION: -$OPTARG" >$2; print_usage; exit1 ;;
       :)echo "Option -$OPTARG requires an argument." >&2; print_usage; exit1 ;;
    esac
done


if [ -z "$LOG_FILE" ]; then
  echo "LOG FILE REQUIRED"
  print_usage
  exit 1
fi

validate_log_file
generate_report
