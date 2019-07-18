echo off

#deletes all files older than 90 days
#change C:\path\to\folder to be the correct top level directory, it will search inside sub-directories with the /s flag
#create scheduled task in Windows to run on regular intervals
#only works for Windows XP due to syntax changes with newer OS versions

#dry run
forfiles -p "C:\path\to\folder" -s -m *.* -d 90 -c "cmd /c echo @path @fdate" > C:test.txt

#actual run
#forfiles -p "C:\path\to\folder" -s -m *.* -d 90 -c "cmd /c del @path @fdate"

