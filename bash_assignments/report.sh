#!/bin/bash
# Generate system report
report="system_report.txt"

echo "User: $(whoami)" > $report
echo "Directory: $(pwd)" >> $report
echo "--- Processes ---" >> $report
ps aux --sort=-%cpu | head -6 >> $report

echo "Report saved to $report"
