#! /bin/sh
# This is a comment! "I bet you already know that!"
# Use comments to annotate your scripts/code to keep it organized and neat.
# Without comments the scripts/code can be more difficult to decypher and debug.

## Example of using shift and multiple parameters
while [ "$#" -gt "0" ]
do
  echo "\$1 is $1"
  shift # Shifts $# down until it is 0
done 


## Example of using $?
/usr/local/bin/my-command
if [ "$?" -ne "0" ]; then # $? contains exit value of the last run command. 0 is exptected on good run.
	echo "Sorry, we had a problem there!"
fi

## SPECIAL NOTE: Use $$ is PID of currenlty running script. $! is PID of last run background process.

# Now save this file with a name.sh format and use "chmod 755" on the file name to make it executable.
# Run it with ./filename.sh
# Run it with './filename.sh sun mercury venus earth mars' for parameters
