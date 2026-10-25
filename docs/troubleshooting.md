## Troubleshooting Guide

This section contains common Linux and Azure infrastructure issues, along with commands and checks used to investigate them.

| Problem | Commands to Investigate | What to Check |
|---|---|---|
| High CPU Usage | `top`, `uptime` | Identify processes consuming high CPU and check the system load average. |
| Low Memory | `free -h`, `top` | Check available memory and identify processes consuming excessive RAM. |
| Disk Nearly Full | `df -h`, `du -sh /var/log` | Check filesystem usage and identify directories consuming significant disk space. |
| Failed Service | `systemctl --failed`, `systemctl status SERVICE` | Identify failed services and investigate their status and error messages. |
| SSH Connection Failure | `systemctl status ssh` or `systemctl status sshd` | Check the SSH service, VM status, network connectivity, NSG rules, and port 22 access. |
| Missing Azure Metrics | Azure Monitor, VM Insights | Verify Azure Monitor configuration, data collection rules, diagnostic settings, and required permissions. |

### Basic Troubleshooting Workflow

1. **Identify the issue:** Observe alerts, errors, or unusual system behavior.
2. **Investigate:** Run appropriate Linux commands and review Azure Monitor metrics.
3. **Find the root cause:** Examine resource usage, service status, logs, and network configurations.
4. **Resolve the issue:** Apply the necessary corrective action.
5. **Verify the fix:** Recheck system health and confirm that the issue is resolved.

**Note:** Replace `SERVICE` with the actual service name, such as `nginx` or `sshd`. Use `ssh` or `sshd` according to the Linux distribution.
