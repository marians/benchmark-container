#!/bin/sh

# Compress 100 million random bytes using gzip

RESULT=$( { time -p head -c 100000000 /dev/urandom | gzip >> /dev/null;} 2>&1 )
DURATION=$(echo "${RESULT}"|head -n 1|awk '{print $2}')
echo "Gzipped 100M bytes in: ${DURATION} seconds"
