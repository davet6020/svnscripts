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

# echo "cp the new branch for SG-$1."
# svn cp $STRUNK $SV3_US/SG-$1
# sleep 1

echo "co the new branch for SG-$1."
svn co $SV3_US/SG-$1 sg-$1/
sleep 1

echo "sw to the new branch SG-$1"
cd sg-$1
svn sw $SV3_US/SG-$1

svn info

cd ~/projects/sg-$1

