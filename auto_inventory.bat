echo off
echo "********"
echo "Deleteing the folder..."
rmdir c:\server1
echo "Creating the folder"
md c:\server1
systeminfo >>c:\server1\servlog.txt
echo "removing the mapped drive"
net use z: /delete
echo "copying the files"
net use z: \\localhost\inventory
copy c:\server1\servlog.txt z:\servlog.txt
echo "Completed"
echo "***********"