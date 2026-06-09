#!/bin/bash
# Msh Backuper Stable V1 (fixed)

clear
echo "Welcome to MshBackuper!"

echo "
______  ___      ______     ________             ______                                    
___   |/  /_________  /_    ___  __ )_____ _________  /_____  ______________________       
__  /|_/ /__  ___/_  __ \   __  __  |  __  /  ___/_  //_/  / / /__  __ \  _ \_  ___/       
_  /  / / _(__  )_  / / /   _  /_/ // /_/ // /__ _  ,<  / /_/ /__  /_/ /  __/  /           
/_/  /_/  /____/ /_/ /_/    /_____/ \____/ \___/ /_/|_| \__,_/ _  .___/\___//_/            
                                                               /_/                 "

read -p "Which operation? cp/mv: " operation
read -p "file or directory? " type

if [ "$type" = "file" ]; then

    read -p "File full path: " filepath
    read -p "File name: " filename
    read -p "Backup path: " pathup

    read -p "Review: $filename from $filepath -> $pathup. Continue? (yes/no): " resume

    if [ "$resume" = "yes" ]; then
        sudo $operation -v "$filepath/$filename" "$pathup"
    else
        exit 1
    fi

elif [ "$type" = "directory" ]; then

    read -p "Directory full path: " dirpath
    read -p "Directory name: " dirname
    read -p "Backup path: " pathup

    read -p "Review: $dirname from $dirpath -> $pathup. Continue? (yes/no): " resume

    if [ "$resume" = "yes" ]; then
        sudo $operation -rv "$dirpath/$dirname" "$pathup"
    else
        exit 1
    fi

else
    echo "Invalid type!"
fi