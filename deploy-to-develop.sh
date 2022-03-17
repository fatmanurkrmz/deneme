#!/bin/bash

GIT_REMOTE_URL=maxteddyeu@ssh057.webhosting.be:auto.git
GIT_REMOTE_CK=false

echo "-------------------------------------------"
echo "------ Deploy to Combell develop ---------"
echo "-------------------------------------------"

read -r -p "Are You Sure? [Y/n] " input
 
case $input in
    [yY][eE][sS]|[yY])
 echo "Yes"
 
 $GIT_REMOTE_CK = git ls-remote --heads $GIT_REMOTE_URL
 
 if $GIT_REMOTE_CK; then echo "deploy...."
 fi
 ;;
    [nN][oO]|[nN])
 echo "No"
       ;;
    *)
 echo "Invalid input..."
 exit 1
 ;;
esac

