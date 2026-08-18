#!/bin/bash
report="system_report.txt"
echo "User: $(whoami)" > "$report"; echo "Dir: $(pwd)" >> "$report"
echo "--- History ---" >> "$report"; tail -5 ~/.bash_history 2>/dev/null >> "$report"
echo "--- Processes ---" >> "$report"; ps aux --sort=-%cpu | head -6 >> "$report"
echo "Report saved: $report"
