#!/bin/bash

# Save this script to a file called cutinternal.sh in your home dir.
# Add the alias to your .bash_profile file  e.g.
# alias cutinternal='/home/yourmom/cutinternal.sh'

clear
echo "These are the commands you can use to manage branches"
grep alias ~/.bash_profile | awk -F"=" '{ print $1}' | awk -F"alias " '{ print $2 }' | grep -v 'll' | grep -v 'svn' | grep -v 'scmds'
