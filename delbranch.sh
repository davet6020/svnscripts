#!/bin/bash

# Save this script to a file called cobranch.sh in your home dir.
# Add the alias to your .bashrc file  e.g.
# alias cobranch='/home/yourmom/cobranch.sh'

# Checkout a new branch.  The only parm is the number of the ticket.
cd ~/projects/

if [ $# -eq 0 ]
  then
    clear
    echo "----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- --"
    echo "You forgot to pass the number of the ticket which is also the branch name."
    echo "----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- --"
    exit
fi

echo "del the new branch for SG-$1."
svn del $SV3_US/SG-$1
sleep 1

echo "del the file structure of branch sg-$1"
rm -rf sg-$1
