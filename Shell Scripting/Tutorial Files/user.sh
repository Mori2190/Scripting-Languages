#! /bin/sh
# Use comments to annotate your scripts/code to keep it organized and neat.
# Without comments the scripts/code can be more difficult to decypher and debug.


echo "What is your name?"
read MY_NAME # This defines the variable MY_NAME with user feedback
MY_MESSAGE="Hello $MY_NAME! I will create a file for you called ${MY_NAME}_file."     # This defines the variable MY_MESSAGE. Use "curly brackets {} to define a variable when appending additional information.
echo "$MY_MESSAGE"
touch "${MY_NAME}_file" #Use "curly brackets {} to define a variable when appending additional information.

# Now save this file with a name.sh format and use "chmod 755" on the file name to make it executable.
# Run it with ./filename.sht
