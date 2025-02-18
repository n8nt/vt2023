#!/bin/bash
cd /usr/local/apps/deployer/vt2023
tar -xzvf vtsdr.tar.gz
echo "Backing up files to be updated"
mkdir backup
cp /usr/local/apps/versatune/versatune.jar backup/.
cp /usr/local/apps/versatune/data/CombiTunerExpress backup/.
cp /home/pi/.profile backup/.
cp /home/pi/.bashrc backup/.
cp /usr/local/apps/versatune/scripts/restartCombiTunerExpress.sh backup/.
cp /usr/local/apps/versatune/scripts/help.txt backup/.
echo "updating files"
cp versatune/versatune-2.2.0.3.jar /usr/local/apps/versatune/versatune.jar
cp versatune/data/CombiTunerExpress /usr/local/apps/versatune/data/CombiTunerExpress
chmod 755 /usr/local/apps/versatune/data/CombitunerExpress
cp versatune/scripts/help.txt /usr/local/apps/versatune/scripts/help.txt
cp versatune/scripts/restartCombiTunerExpress.sh /usr/local/apps/versatune/scripts/restartCombiTunerExpress.sh
cp versatune/home_pi/dotProfile /home/pi/.profile
cp versatune/home_pi/dotBashrc /home/pi/.bashrc
cp updatevt.sh /home/pi/.
cp copyfiles.sh /home/pi/.
chmod 755 /home/pi/updatevt.sh
chmod 755 /home/pi/copyfiles.sh
cd /home/pi
pwd
echo "Finished"
