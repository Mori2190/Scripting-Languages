#! /bin/sh
# Use comments to annotate your scripts/code to keep it organized and neat.
# Without comments the scripts/code can be more difficult to decypher and debug.

echo "Please talk to me ..."
while :
do
	read INPUT_STRING
	case $INPUT_STRING in
		hello)
			echo "Hello yourself!"
			;;
		bye)
			echo "See you again!"
			break # Break terminates the loop. Exit will terminate the script.
			;;
		*)
			echo "Sorry, I don't understand you."
			;;
	esac
done
echo
echo "That's all folks!"

# Now save this file with a name.sh format and use "chmod 755" on the file name to make it executable.
# Run it with ./filename.sht
