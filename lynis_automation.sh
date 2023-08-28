#!/bin/bash

# Set the email address where the results will be sent
EMAIL="XXXXX@mail.com"

# Update Lynis
sudo lynis update info

# Loop through all hosts and perform the audit
for host in host1 host2 host3
do
    # Perform system audit using Lynis
    sudo lynis audit system --auditor "Automated Script" --quiet > "/tmp/${host}_lynis_audit.txt"

    # Send email with audit results
    subject="Lynis Audit Results for $host"
    body="Please find attached the Lynis audit results for $host."
    attachment="/tmp/${host}_lynis_audit.txt"
    
    echo "$body" | mail -s "$subject" -a "$attachment" "$EMAIL"
    
    # Optional: Clean up the temporary audit file
    rm -f "/tmp/${host}_lynis_audit.txt"
done
