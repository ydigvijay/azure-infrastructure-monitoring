
#!/usr/bin/env bash

# Azure Infrastructure Monitoring
# Linux system health-check script

set -u

echo "=================================="
echo " Azure Infrastructure Monitoring"
echo " Linux Health Check"
echo "=================================="
echo

echo "1. Operating System"
cat /etc/redhat-release 2>/dev/null || cat /etc/os-release
echo

echo "2. System Uptime and Load"
uptime
echo

echo "3. CPU and Running Processes"
top -b -n 1 | head -n 12
echo

echo "4. Memory Usage"
free -h
echo

echo "5. Disk Usage"
df -h
echo

echo "6. Failed Services"
systemctl --failed --no-pager || true
echo

echo "7. Recent System Errors"
journalctl -p err -b -n 20 --no-pager || true
echo

echo "Health check completed."
