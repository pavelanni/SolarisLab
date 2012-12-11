#!/bin/bash
#===============================================================================
#
#          FILE:  zone-create.sh
# 
#         USAGE:  ./zone-create.sh 
# 
#   DESCRIPTION:  This is the shell script to create a zone
#		  It will ask several questions and then create a zone
#		  using those parameters.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Pavel Anni (), pavel.anni@gmail.com
#       COMPANY:  Oracle Corp.
#       VERSION:  1.0
#       CREATED:  10/05/2012 21:00:16 EDT
#      REVISION:  ---
#===============================================================================

ZONENAME=web2
IPADDRESS=10.140.204.72
ROUTER=10.140.204.1
NODENAME=atl-sewr-142
DNS1=192.135.82.132
DNS2=130.35.249.52
DNS3=130.35.249.41
SEARCHDOMAIN=us.oracle.com
TIMEZONE="US\/Eastern"


sed 's/ZONENAME/'$ZONENAME'/' < zonecfg-template > $ZONENAME-zonecfg

sed -e 's/IPADDRESS/'"$IPADDRESS"'/g' \
-e 's/ROUTER/'$ROUTER'/g' \
-e 's/NODENAME/'$NODENAME'/g' \
-e 's/DNS1/'$DNS1'/g' \
-e 's/DNS2/'$DNS2'/g' \
-e 's/DNS3/'$DNS3'/g' \
-e 's/SEARCHDOMAIN/'$SEARCHDOMAIN'/g' \
-e 's/TIMEZONE/'"$TIMEZONE"'/g' < zone-template-profile.xml > $ZONENAME-profile.xml

