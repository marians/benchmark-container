#!/bin/sh

RESULT=$( { time -p ramspeed/ramspeed.sh ;} 2>&1 )
DURATION=$(echo "${RESULT}"|head -n 1|awk '{print $2}')
echo "ramspeed tests finished in: ${DURATION} seconds"
