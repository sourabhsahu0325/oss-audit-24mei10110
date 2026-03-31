#!/bin/bash 
# Script 5: Open Source Manifesto Generator 
# Author: Ayush Tiwari 
# Concepts: read command, string interpolation, file redirection (>>), date formatting. 
echo "____ Answer three questions to generate your manifesto ____" 
echo 
# 1. Capture User Input 
read -p "1. Name one open-source tool you use every day: " TOOL 
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM 
read -p "3. Name one thing you would build and share freely: " BUILD 
# 2. Generate Timestamp 
CURRENT_DATE=$(date +'%d %B %Y') 
# 3. Define the Output Filename 
OUTPUT_FILE="manifesto_$(whoami).txt" 
# 4. Check for Empty Inputs (Safety Check) 
if [ -z "$TOOL" ]; then TOOL="Open Source Software"; fi 
if [ -z "$FREEDOM" ]; then FREEDOM="Independence"; fi 
# 5. Writing the Manifesto to the File 
echo "--- MY OPEN SOURCE MANIFESTO ---" > "$OUTPUT_FILE" 
echo "Generated on: $CURRENT_DATE" >> "$OUTPUT_FILE" 
echo "__________________________________________________" >> "$OUTPUT_FILE" 
echo >> "$OUTPUT_FILE" 
echo "I believe in the importance of $TOOL because it fosters community innovation." >> 
"$OUTPUT_FILE" 
echo "To me, software freedom is truly about $FREEDOM." >> "$OUTPUT_FILE" 
echo "I am committed to building $BUILD and sharing it with the world freely." >> 
"$OUTPUT_FILE" 
# 6. Final Display to Terminal 
echo "Success! Your manifesto has been saved to: $OUTPUT_FILE" 
echo "__________________________________________________" 
cat "$OUTPUT_FILE"
