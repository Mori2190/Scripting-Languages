#! /bin/sh
# This is a comment! "I bet you already know that!"
# Use comments to annotate your scripts/code to keep it organized and neat.
# Without comments the scripts/code can be more difficult to decypher and debug.

## Example using curly bracket to call variable
foo=sun
echo $fooshine # $fooshine is undefined
echo ${foo}shine # $foo is defined and combined with shine to make sunshine

## Example of using default values
echo -en "What is your name [ `whoami` ] "
read myname
if [ -z "$myname" ]; then
	myname=`whoami`
fi
echo "Your name is: $myname"

# Example of using the :- to pull from a subshell
echo -en "What is your name [ `whoami` ] "
read myname
echo "Your name is: ${myname:-`whoami`}"

#Example of using the := to set the variable default if it is undefined
echo -en "What is your name [ `whoami` ] "
read myname
echo "Your name is: ${myname:=John Doe}"

## SPECIAL NOTE: Use $$ is PID of currenlty running script. $! is PID of last run background process.

# Now save this file with a name.sh format and use "chmod 755" on the file name to make it executable.
# Run it with ./filename.sh
# Run it with './filename.sh sun mercury venus earth mars' for parameters
