#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Asmit Upadhyay

echo "--- Open Source Philosophy Generator ---"

# Interactive questions [cite: 193, 196]
read -p "What open-source tool do you use daily? " TOOL
read -p "What does 'freedom' mean in software? " FREEDOM
read -p "What would you build and share for free? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose and write to file [cite: 199, 200]
echo "OPEN SOURCE MANIFESTO" > "$OUTPUT"
echo "Generated on: $DATE" >> "$OUTPUT"
echo "------------------------------------------" >> "$OUTPUT"
echo "I believe in the power of open tools like $TOOL. To me, software freedom is $FREEDOM. If I were to contribute to the global community, I would create a $BUILD and share it openly with the world." >> "$OUTPUT"

echo "Success: Manifesto saved to $OUTPUT" [cite: 201]
cat "$OUTPUT" [cite: 202]
