#!/bin/bash

# Save this script to a file called gulpnomin.sh in your home dir.
# Add the alias to your .bashrc file  e.g.
# alias gulpnomin='/home/yourmom/gulpnomin.sh'

# Checkout a new branch.  The only parm is the number of the ticket.

if [ $# -eq 0 ]
  then
    clear
    echo "----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- --"
    echo "You forgot to pass the number of the ticket which is also the branch name."
    echo "----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- --"
    exit
fi

echo "gulp runall --no-minify for sg-$1."

fswatch-rsync gulp sg-$1 runall --no-minify
