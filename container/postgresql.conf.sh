#!/bin/bash

cat << EOF > $PGDATA/postgresql.conf

#------------------------------------------------------------------------------
# CONNECTIONS AND AUTHENTICATION
#------------------------------------------------------------------------------

listen_addresses = '*'

#------------------------------------------------------------------------------
# ERROR REPORTING AND LOGGING
#------------------------------------------------------------------------------

logging_collector = on
log_line_prefix = '%m '
# Tweaks from Gilev.ru
ssl = off
temp_buffers = 512MB
effective_io_concurrency = 2
autovacuum = on
autovacuum_naptime = 20s
bgwriter_delay = 20ms
bgwriter_lru_multiplier = 4.0
bgwriter_lru_maxpages = 400
synchronous_commit = off
max_locks_per_transaction = 256
max_connections = 1000
EOF
