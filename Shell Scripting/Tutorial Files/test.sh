#! /bin/sh
# Use comments to annotate your scripts/code to keep it organized and neat.
# Without comments the scripts/code can be more difficult to decypher and debug.

# Traditional if-then Statement
if [ "$X" -lt "0" ]
then
  echo "X is less than zero"
fi
# Improved if-then statement
if [ "$X" -gt "0" ]; then # The semicolon (;) is used to join two lines together on the same line.
  echo "X is more than zero"
fi
# Tests can be ran with the command 'test' or the [ ]. The [ is an shortcut for the test command. The && desinates what to do if the test is true. The || desinates what to do if the test is false. The \ tells the system to handle the next line as part of the same line. 
[ "$X" -le "0" ] && \
      echo "X is less than or equal to  zero"
[ "$X" -ge "0" ] && \
      echo "X is more than or equal to zero"
[ "$X" = "0" ] && \
      echo "X is the string or number \"0\""
[ "$X" = "hello" ] && \
      echo "X matches the string \"hello\""
[ "$X" != "hello" ] && \
      echo "X is not the string \"hello\""
[ -n "$X" ] && \
      echo "X is of nonzero length"
[ -f "$X" ] && \
      echo "X is the path of a real file" || \
      echo "No such file: $X"
[ -x "$X" ] && \
      echo "X is the path of an executable file"
[ "$X" -nt "/etc/passwd" ] && \
      echo "X is a file which is newer than /etc/passwd"

# Now save this file with a name.sh format and use "chmod 755" on the file name to make it executable.
# Run it with ./filename.sht
