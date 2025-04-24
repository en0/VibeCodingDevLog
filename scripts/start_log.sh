#!/bin/bash

current_date=$(date +"%m/%d/%Y")
current_time=$(date +"%I:%M%p")
filename=$(date +"%Y%m%dT%H%M")

file_name="${filename}.md"
cp Log/template.md "Log/${file_name}"

sed -i "s|00/00/2025|${current_date}|g" "Log/${file_name}"
sed -i "s|\*\*Start:\*\* 00:00p|**Start:** ${current_time}|g" "Log/${file_name}"

echo "Log file created: Log/${file_name}"
