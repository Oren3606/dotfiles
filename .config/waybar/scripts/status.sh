#!/bin/bash

# CPU usage
CPU=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')

# GPU usage using Nouveau
GPU=$(sensors | grep -i 'nouveau' | grep 'temp1' | awk '{print $2}')

# Disk usage
DISK=$(df -h / | awk 'NR==2 {print $5}')

# Network usage
NETWORK=$(ip -br address show | grep UP | awk '{print $1 ": " $3}')

echo "CPU: $CPU, GPU: $GPU%, Disk: $DISK, Network: $NETWORK"

