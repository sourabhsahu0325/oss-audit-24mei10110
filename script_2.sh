#!/bin/bash 
# Script 2: FOSS Package Inspector 
# Purpose: Checks for MySQL installation and describes its FOSS role. 
# Define the package to inspect 
PACKAGE="mysql-server" 
echo "Scanning for package: $PACKAGE ..."
# Check if the package is installed using dpkg (Debian/Ubuntu) or rpm (RHEL/CentOS) 
if dpkg -l | grep -q "$PACKAGE" 2>/dev/null || rpm -q "$PACKAGE" &>/dev/null; then 
echo "SUCCESS: $PACKAGE is installed on this system." 
# Extract Version, License, and Summary using available package managers 
if command -v apt-cache &>/dev/null; then 
# Query apt-cache for metadata and filter relevant lines 
apt-cache show "$PACKAGE" | grep -E 'Version|License|Description' | head -n 3 
else 
# Fallback for RPM-based systems 
rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary' 
fi 
else 
# Handle the case where the software is missing 
echo "ERROR: $PACKAGE is NOT found." 
fi 
echo "__________________________________________________" 
# Case statement to print a philosophy note based on the name 
case $PACKAGE in 
"mysql-server"|"mysql") 
echo "MySQL Philosophy: Pioneering the dual-licensing model to provide a" 
echo "reliable, open-source relational database for the masses." 
;; 
"httpd"|"apache2") 
echo "Apache Philosophy: Powering the web through community-driven standards." 
;; 
"firefox") 
echo "Firefox Philosophy: Protecting the open web and user privacy." 
;; 
*) 
echo "General Philosophy: Promoting transparency through shared source code." 
;; 
esac