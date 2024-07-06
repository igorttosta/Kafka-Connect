#!/bin/sh

for script in /docker-entrypoint-initdb.d/ksql/*.sql; do
  echo "Executing $script..."
  sleep 40
  ksql http://localhost:8088 < "$script"
done