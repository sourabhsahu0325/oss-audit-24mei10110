Open Source Shell Scripts
Student Name: Sourabh Sahu Registration Number: 24MEI10110

A collection of Linux shell scripts created for practicing open-source concepts, Linux system administration, and Bash scripting.

This repository contains small utility scripts that inspect and report information about a Linux system, including package details, disk usage, logs, permissions, and system identity.

Repository Structure
.
├── Script_1.sh (System Identity)
├── Script_2.sh (Disk Permission Auditor)
├── Script_3.sh (Log Analyser)
├── Script_4.sh (Package Inspector)
├── Script_5.sh (Manifesto)
└── README.md
Scripts Overview
1. Script_1.sh (System Identity)
Displays basic information about the Linux system, including:

Linux distribution name
Kernel version
Current logged-in user
Home directory
System uptime
Current date and time
Open-source license information
2. Script_2.sh (Disk Permission Auditor)
Audits important system directories and reports:

Disk usage
Ownership of directories
Security permissions
Potential permission-related concerns
Directories checked include /etc, /var/log, /home, /usr/bin, and /tmp.

3. Script_3.sh (Log Analyser)
Analyzes Linux log files and extracts useful system information such as:

Recent login attempts
System errors
Warning messages
Activity from important logs
This is useful for understanding how Linux logging works and identifying unusual activity.

4. Script_4.sh (Package Inspector)
Inspects installed software packages on a Linux system and reports details such as:

Package name
Installation status
Version information
Package source
5. Script_5.sh (Manifesto)
Displays a short open-source manifesto or message explaining the importance of:

Open-source software
Community contribution
Software freedom
Linux and collaborative development
Requirements
Linux operating system
Bash shell
Basic Linux utilities such as: uname, whoami, uptime, df, du, ls, grep, awk
How to Run
Clone the repository:

git clone https://github.com/your-username/oss-audit-24MEI10025.git
cd oss-audit-24MEI10025
Give execution permission to the scripts:

chmod +x *.sh
Run any script (example given for Script 1):

./Script_1.sh
