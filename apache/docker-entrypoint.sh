#!/bin/bash
set -e

# Start Sendmail in the background
service sendmail start

# Start Apache in the foreground
exec apache2-foreground
