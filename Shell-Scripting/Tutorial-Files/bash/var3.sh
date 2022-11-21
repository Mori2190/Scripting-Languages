#! /bin/sh
# This is a comment! "I bet you already know that!"
# Use comments to annotate your scripts/code to keep it organized and neat.
# Without comments the scripts/code can be more difficult to decypher and debug.

echo "I was called with $# parameters" # $# is the number of parameters the script is called with
echo "My name is $0" # $0 is the "basename" of the program as it was called.
echo "My name is `basename $0`" # "Basename" changes depending on HOW the script was called. Try using as `basename $0`
echo "My first parameter is $1" # $1 ... $9 are the first 9 additional parameters the script was called with
echo "My second parameter is $2" # $2 is the second parameter the script was called with
echo "All parameters are $@" # $@ is all the parameters the script was called with

## SPECIAL NOTE: Use $@ whenever possible as oposed to $*. $* will not preserve any whitespace or quotings

# Now save this file with a name.sh format and use "chmod 755" on the file name to make it executable.
# Run it with ./filename.sh
# Run it with './filename.sh sun mercury venus earth mars' for parameters
