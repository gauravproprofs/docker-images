#!/bin/bash
# Set the hostname to "smtpserver"
echo "mail.proprofs.io" > /etc/hostname
echo "127.0.0.1 mail.proprofs.io mail" >> /etc/hosts

# Execute the passed command
exec "$@"
