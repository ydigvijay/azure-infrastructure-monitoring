# Architecture — Azure Infrastructure Monitoring

## Purpose

This document describes the planned architecture for monitoring a RHEL virtual machine on Microsoft Azure.

## Components

1. **Administrator:** Connects to the Linux VM using SSH.
2. **Azure Virtual Network:** Provides network connectivity and isolation.
3. **RHEL Virtual Machine:** Hosts the operating system and runs health checks.
4. **Azure Monitor:** Displays supported VM metrics and monitoring information.
5. **Alert Rules:** Evaluate configured metric thresholds.
6. **Action Group:** Sends notifications when configured and triggered.
7. **Bash Health Check:** Collects basic system health information.

## Data Flow

1. The administrator connects to the VM using SSH.
2. Linux commands inspect CPU activity, memory, disk usage, and system logs.
3. Azure Monitor displays supported infrastructure metrics.
4. Alert rules evaluate metrics against configured conditions.
5. An action group sends notifications if configured and triggered.

## Security

- Use SSH key authentication.
- Restrict inbound access.
- Apply least-privilege permissions.
- Do not store credentials or private keys in GitHub.

## Monitoring Considerations

Basic host metrics and guest-level operating system metrics have different collection requirements. Configure Azure Monitor Agent and data collection rules if guest-level telemetry is required.


