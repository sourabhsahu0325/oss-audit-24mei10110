#!/bin/bash
# Script 1: System Identity Report
# Purpose: Displays a summary of the Linux environment and OS license.
# Author: Sourabh Sahu
# Define student and project variables
STUDENT_NAME="Sourabh Sahu" 
SOFTWARE="MySQL"
# Fetch system data using command substitution
KERNEL_VERSION=$(uname -r) # Retrieves the specific kernel release
CURRENT_USER=$(whoami) # Identifies the active shell user
HOME_DIR=$HOME # Path to the user's home directory
UPTIME_VAL=$(uptime -p) # Human-readable system uptime
CURRENT_TIME=$(date) # Current system date and time
# Extract the distribution name from the OS release file
DISTRO_NAME=$(grep '^PRETTY_NAME' /etc/os-release | cut -d= -f2 | tr -d '"')
# Display the report with formatted output
echo "__________________________________________________"
echo " OPEN SOURCE AUDIT: $SOFTWARE"
echo " Submitted by: $STUDENT_NAME"
echo "__________________________________________________"
echo "OS Distribution : $DISTRO_NAME"
echo "Kernel Version : $KERNEL_VERSION"
echo "Active User : $CURRENT_USER"
echo "Home Directory : $HOME_DIR"
echo "System Uptime : $UPTIME_VAL"
echo "Current Date : $CURRENT_TIME"
echo "__________________________________________________"
# Requirement: State the license covering the OS
echo "License Note: This Linux distribution is distributed under the"
echo "GNU General Public License (GPL), ensuring software freedom."
echo "__________________________________________________"