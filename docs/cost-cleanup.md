# Azure Cost Management and Cleanup

## Objective

Control project costs and prevent unnecessary Azure resource charges.

## Before Deployment

- Review the selected RHEL image and software licensing.
- Check VM pricing in the chosen region.
- Estimate disk and networking costs.
- Review monitoring and alerting charges.
- Set a budget and cost alerts where available.

## During Testing

- Use an appropriately sized VM.
- Avoid leaving test resources running unnecessarily.
- Monitor resource consumption.
- Record the resources created for the project.

## Cleanup Procedure

1. Stop the VM when it is not needed.
2. If the environment is no longer required, delete the project resource group.
3. Confirm deletion of the VM and related resources.
4. Check for retained disks, public IPs, snapshots, workspaces, or other resources.
5. Review Azure Cost Management for remaining usage and charges.

## Important

Stopping a VM does not necessarily stop charges for disks, public IPs, monitoring, or other associated resources.

## Cleanup Record

- Resource group:
- Date cleaned up:
- Resources deleted:
- Resources retained:
- Remaining cost concerns:


