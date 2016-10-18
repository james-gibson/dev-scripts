#!/bin/bash
#Configure SSH Keys
if [ -z "${email}" ]; then
    read -p "Enter email address:" email
fi    
ssh-keygen -f "$HOME/.ssh/id_rsa" -P "" -t rsa -C $email

ssh-agent -s
ssh-add ~/.ssh/id_rsa

pbcopy < ~/.ssh/id_rsa.pub
echo "Public key has been copied to the clipboard"
