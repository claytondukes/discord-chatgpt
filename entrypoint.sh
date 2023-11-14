#!/bin/sh
# Set permissions for the SQLite database directory
chown -R sqlite:sqlite /var/lib/db
# Execute the passed command
exec "$@"

