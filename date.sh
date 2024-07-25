#!/bin/bash

start_date="2024-01-01"
end_date="2024-03-31"

current_date=$start_date

while [ "$(date -d "$current_date" +%s)" -le "$(date -d "$end_date" +%s)" ]; do
    formatted_date=$(date -d "$current_date" +%m-%d-%Y)
    echo "$formatted_date"
    
    # Move to the next day
    current_date=$(date -d "$current_date + 1 day" +%Y-%m-%d)
done
