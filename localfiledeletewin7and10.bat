echo off

#deletes all files older than 90 days
#change C:\path\to\folder to be the correct top level directory, it will search inside sub-directories with the /s flag
#create scheduled task in Windows to run on regular intervals
#only works for Windows 7/10


#dry run saves list to file
forfiles /P "C:\folderpath" /M *.* /S /D -90 /C "cmd /c echo @path @fdate" > C:test.txt

#actual run
#forfiles /P "C:\folderpath" /M *.* /S /D -90 /C "cmd /c del @path @fdate"
