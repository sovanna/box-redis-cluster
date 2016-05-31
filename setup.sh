#!/usr/bin/env bash

cd "/vagrant/scripts/"

# Useful func
source "_lib.sh"

# Start serious things here!

log "Update"
apt-get update

# Install default
. bootstrap.sh

log "Cleanup"
apt-get autoremove -y

# Install Redis instance
. bootstrap_redis.sh

# Install Supervisor
. bootstrap_supervisor.sh

log "Setup complete!"