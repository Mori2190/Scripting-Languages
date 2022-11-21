#! /bin/sh
# Use comments to annotate your scripts/code to keep it organized and neat.
# Without comments the scripts/code can be more difficult to decypher and debug.

INPUT_STRING=hello
while [ "${INPUT_STRING}" != "bye" ]
do
	echo "Please type something in (bye to quit)"
	read INPUT_STRING
	echo "You typed: ${INPUT_STRING}"
done

# Now save this file with a name.sh format and use "chmod 755" on the file name to make it executable.
# Run it with ./filename.sht
