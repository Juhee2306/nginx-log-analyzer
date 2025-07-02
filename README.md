# NGINX Log Analyzer

A simple Bash script that analyzes NGINX access logs and generates a readable summary report. This project was built to practice log parsing, Bash scripting, and command-line data processing.

---

## Features

- Displays the top 5 IP addresses making requests
- Lists the top 5 most requested resource paths
- Summarizes the top 5 HTTP response status codes
- Shows the top 5 most frequent user agents
- Output results to both the terminal and a `report.txt` file

---

## Requirements

- Bash shell
- Common command-line tools: `awk`, `sort`, `uniq`, `head`
- An NGINX access log in standard format

---

## Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/nginx-log-analyzer.git
   cd nginx-log-analyzer
2. **Download a sample log file**
   ```bash
   curl -O https://gist.githubusercontent.com/kamranahmedse/e66c3b9ea89a1a030d3b739eeeef22d0/raw/77fb3ac837a73c4f0206e78a236d885590b7ae35/nginx-access.log
3. **Make the script executable =**
   ```bash
   chmod +x analyze-log.sh
4. **Run the script**
   ```bash
   ./analyze-log.sh
5. **View the generated report**
   The output is saved in report.txt and also displayed in the terminal.

---

## Project structure

nginx-log-analyzer/
─ analyze-log.sh        # Main Bash script
─ nginx-access.log      # Sample NGINX log (optional)
─ report.txt            # Auto-generated analysis report
─ README.md             # Project documentation

----

## Author
Juhee Lavanya
-Built as a hands-on project to learn Bash scripting and log analysis
