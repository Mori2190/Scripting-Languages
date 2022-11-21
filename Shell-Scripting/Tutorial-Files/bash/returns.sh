#! /bin/sh
# This is a comment! "I bet you already know that!"
# Use comments to annotate your scripts/code to keep it organized and neat.
# Without comments the scripts/code can be more difficult to decypher and debug.

# returns example .sh
adduser()
{
  USER=$1
  PASSWORD=$2
  shift ; shift
  COMMENTS=$@
  useradd -c "${COMMENTS}" $USER
  if [ "$?" -ne "0" ]; then # test to check if useradd ran without issue
    echo "Useradd failed"
    return 1 # Returns error "code"
  fi
  passwd $USER $PASSWORD
  if [ "$?" -ne "0" ]; then  # test to check if passwd ran without issue
    echo "Setting password failed"
    return 2 # Returns error "code"
  fi
  echo "Added user $USER ($COMMENTS) with pass $PASSWORD"
}

## Main script starts here

adduser bob letmein Bob Holness from Blockbusters
ADDUSER_RETURN_CODE=$?
if [ "$ADDUSER_RETURN_CODE" -eq "1" ]; then
  echo "Something went wrong with useradd"
elif [ "$ADDUSER_RETURN_CODE" -eq "2" ]; then 
   echo "Something went wrong with passwd"
else
  echo "Bob Holness added to the system."
fi

## SPECIAL NOTE: When using the $? variable make sure you save it to another variable prior to doing the test or it will return the results of the last check.


# Now save this file with a name.sh format and use "chmod 755" on the file name to make it executable.
# Run it with ./filename.sh
# Run it with './filename.sh sun mercury venus earth mars' for parameters
