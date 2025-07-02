##NGINX Log Analyzer (Shell Script)

##About
This is a simple shell script that analyzes NGINX access logs. It shows you:

The top 5 IP addresses that made the most requests

The top 5 paths that were accessed

The top 5 response status codes (like 200, 404)

The top 5 user agents (browsers, tools, etc.)

It was built to help practice basic Linux commands like awk, sort, uniq, and head — useful for DevOps and scripting beginners.

##How to Use

Download or clone this project

git clone https://github.com/yourusername/nginx-log-analyzer.git
cd nginx-log-analyzer

Make sure the script can run

chmod +x analyze-log.sh

Download a sample log file (or use your own)

curl -O https://gist.githubusercontent.com/kamranahmedse/e66c3b9ea89a1a030d3b739eeeef22d0/raw/77fb3ac837a73c4f0206e78a236d885590b7ae35/nginx-access.log

Run the script

./analyze-log.sh

The script will print the results on screen and save them to a file called report.txt.

##Files

analyze-log.sh — the main script

nginx-access.log — the input log file

report.txt — the output report

README.md — this file

##Why I Made This
I wanted to learn how real logs work and how to process them using simple shell tools. This was a small project to practice scripting and understand how logs can give useful info
