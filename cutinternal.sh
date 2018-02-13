#!/bin/bash

# Save this script to a file called cutinternal.sh in your home dir.
# Add the alias to your .bash_profile file  e.g.
# alias cutinternal='/home/yourmom/cutinternal.sh'

# Cut a new branch.  The only parm is the number of the ticket.
cd ~/projects/

if [ $# -eq 0 ]
  then
    clear
    echo "----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- --"
    echo "You forgot to pass the number of the ticket which is also the branch name."
    echo "----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- --"
    exit
fi

echo "cp the new branch for SG-$1."
svn cp $SINTERNAL $SINTERNAL_US/SG-$1
sleep 1

echo "co the new branch for SG-$1."
svn co $SINTERNAL_US/SG-$1 int-$1/
sleep 1

echo "sw to the new branch SG-$1"
cd int-$1
svn sw $SINTERNAL_US/SG-$1

svn info

cd ~/projects/int-$1

echo "Your Internal branch is:"
echo "https://int-$1.dave.internal.dev.sg53.net"

# To remove an internal branch
# svn rm $SINTERNAL_US/SG-7616
# 