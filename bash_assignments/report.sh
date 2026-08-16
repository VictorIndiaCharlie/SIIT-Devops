#!/bin/bash

# SYSTEM REPORT: Generate system information report

REPORT_FILE="system_report.txt"

echo "📊 Generating system report..."

# Start building the report
{
    echo "=========================================="
    echo "           SYSTEM REPORT"
    echo "           $(date)"
    echo "=========================================="
    echo ""
    
    # Current user logged in
    echo "🔹 CURRENT USER:"
    echo "   $(whoami)"
    echo ""
    
    # Current working directory
    echo "🔹 CURRENT WORKING DIRECTORY:"
    echo "   $(pwd)"
    echo ""
    
    # Last 5 lines of .bash_history (if available)
    echo "🔹 LAST 5 BASH HISTORY ENTRIES:"
    if [ -f "$HOME/.bash_history" ]; then
        tail -5 "$HOME/.bash_history" | sed 's/^/   /'
    else
        echo "   .bash_history file not found"
    fi
    echo ""
    
    
    echo "=========================================="
    echo "Report generated at $(date)"
    echo "=========================================="
    
} > "$REPORT_FILE"

echo "✅ System report generated: $REPORT_FILE"
echo "📄 Use 'cat $REPORT_FILE' to view the report."