#!/bin/bash

# Save this script to a file called mergetrunk.sh in your home dir.
# Add the alias to your .bash_profile file  e.g.
# alias mergetrunk='/home/yourmom/mergetrunk.sh'

# Cut a new branch.  The only parm is the number of the ticket.
cd ~/projects/sg-$1

if [ $# -eq 0 ]
  then
    clear
    echo "----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- --"
    echo "You forgot to pass the number of the ticket which is also the branch name."
    echo "----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- --"
    exit
fi

svn merge $STRUNK
svn info
