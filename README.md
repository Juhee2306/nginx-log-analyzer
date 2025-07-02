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
