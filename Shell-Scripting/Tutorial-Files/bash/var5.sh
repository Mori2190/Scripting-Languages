#! /bin/sh
# This is a comment! "I bet you already know that!"
# Use comments to annotate your scripts/code to keep it organized and neat.
# Without comments the scripts/code can be more difficult to decypher and debug.

## Example of using IFS Modifications
old_IFS="$IFS" # IFS is special. IFS is Internal Field Seperator default is SPACE TAB NEWLINE. Use double quotes for cleanliness and parameter passing.
IFS=:
echo "Please input some data separated by colons ..."
read v w x y z
IFS=$old_IFS
echo "v is $v w is $w x is $x y is $y z is $z"

## SPECIAL NOTE: Use $$ is PID of currenlty running script. $! is PID of last run background process.

# Now save this file with a name.sh format and use "chmod 755" on the file name to make it executable.
# Run it with ./filename.sh
# Run it with './filename.sh sun mercury venus earth mars' for parameters
