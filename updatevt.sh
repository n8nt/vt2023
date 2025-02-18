#!/bin/bash
cd /usr/local/apps/

DIR="/usr/local/apps/deployer"
if [ -d "$DIR" ]; then
  # go ahead and do the git retrieve
  echo "Directory '$DIR' exists."
else
  echo "Directory '$DIR' does not exist. Creating it now."
  mkdir /usr/local/apps/deployer
fi

DIR2="/usr/local/apps/deployer/vt2023"
if [ -d "$DIR2" ]; then
  # need to delete the directory to be able to clone a new on.
  echo "Deleting '$DIR2'"
  rm  -rf /usr/local/apps/deployer/vt2023
fi

cd /usr/local/apps/deployer
rm -rf versatune
git clone https://github.com/n8nt/vt2023.git
cd /usr/local/apps/deployer/vt2023
pwd
echo "Run the command: './copyfiles.sh'" 

