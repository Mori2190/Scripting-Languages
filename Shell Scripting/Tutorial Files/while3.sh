#! /bin/sh
# Use comments to annotate your scripts/code to keep it organized and neat.
# Without comments the scripts/code can be more difficult to decypher and debug.

while read input_text
do
	case $input_text in
		hello) echo English;;
		howdy) echo Texan;;
		gday) echo Australian;;
		bonjour) echo French;;
		"guten tag") echo German;;
		hola) echo Spanish;;
		*) echo "Unknown Language: $input_text";;
	esac
done < myfile.txt

# Now save this file with a name.sh format and use "chmod 755" on the file name to make it executable.
# Run it with ./filename.sht
