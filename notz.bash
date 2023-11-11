#!/bin/bash
# notz.bash
#
# Description of the script
description="Convert date/time or current time to dynamic Discord tag. (no TZ)"
# Wrap the command in a function
function notz {
  # Use the date command to convert the argument to a timestamp
  timestamp=$(date --date "$1" +%s)
  # Output the timestamp as a Discord tag
  echo "<t:$timestamp>"
}
# Call the function with the argument passed as $1
notz $1
# Exit with a status of 0
exit 0
