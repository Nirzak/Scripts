#!/bin/bash

# Prompts the user for a directory name and then creates it  with mkdir.

echo "Give a directory name to create:" 

read NEW_DIR

# Save original directory so we can return to it (could also just use pushd, popd)

ORIG_DIR=$(pwd)
echo " "
# check to make sure it doesn't already exist!
echo "Cheking if directory is already existed not"
[[ -d $NEW_DIR ]] && echo $NEW_DIR already exists, aborting && exit 
mkdir $NEW_DIR

# Changes to the new directory and prints out where it is using pwd.  

cd $NEW_DIR
pwd
echo " "
echo "Creating files on new directory"

for j in 1 2 3 4
do
touch file$j
done

echo " "
echo "Listing the created files"
echo " "
ls -l

echo " "
echo -e "Writing inside the file\n"
echo " "

for i in 1 2 3 4
do
echo "File $i has been written"
echo "This is file $i" > file$i
done

echo " "
echo "Showing the content of the created files"
echo " "

for p in 1 2 3 4
do
cat file$p
done

echo " "
cd $ORIG_DIR

echo "Deleting all created files"
echo " "
rm -rf $NEW_DIR

echo "Good Bye. Take Care!"
