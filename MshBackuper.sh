#!/bin/bash
#Msh Backuper Stable V1

clear
echo 'Welcome to MshBackuper!'
echo '


______  ___      ______     ________             ______                                    
___   |/  /_________  /_    ___  __ )_____ _________  /_____  ______________________       
__  /|_/ /__  ___/_  __ \   __  __  |  __ `/  ___/_  //_/  / / /__  __ \  _ \_  ___/       
_  /  / / _(__  )_  / / /   _  /_/ // /_/ // /__ _  ,<  / /_/ /__  /_/ /  __/  /           
/_/  /_/  /____/ /_/ /_/    /_____/ \__,_/ \___/ /_/|_| \__,_/ _  .___/\___//_/            
                                                               /_/                         

'
read -p "Which operatin do you want to do?(copy or move)" answer1
read -p "Which folder or file do you want to backup?" answer2
read -p "Which path do you want to save the file?" answer3
if [ "$answer1" = "copy" ]; then
    cp -rv "$answer2" "$answer3"
elif [ "$answer1" = "move" ]; then
    mv -v "$answer2" "$answer3"
else
    echo "Error: Please enter 'copy' or 'move'"
fi

