
#!/bin/bash

#Checking a file's permissions:

#Reading file name
echo "Please enter file name:"
read file

#Check a file's user permissions
echo "User permissions for "$file":"
getfacl "$file" | grep user

#Check a file's group permissions
echo "Group permissions for "$file":"
getfacl "$file" | grep "group::"

#Check a file's other permissions
echo "Others permissions for "$file":"
getfacl "$file" | grep "other::"
