#!/bin/sh

#deletes files (not folders) older than 90 days recursively, confirm directory path before executing!
#mtime checks for file data modified n*24 hours ago, rounding can affect this, so use days+1 for command
#run script as a cron to automate

#dryrun
find /path/to/files/ -type f -name '*' -mtime +91 > dryrun.txt

#actual run
#find /path/to/files/ -type f -name '*' -mtime +91 -exec rm {} \;
