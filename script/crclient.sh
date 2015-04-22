#!/bin/sh
if [ -z $1 ]
then
	echo -e "usage: $(basename $0) [ option ] \n\n--options \n	-r, --execute and login \n	-s, --setpreferences\n	-q, --logout & exit \n"
	exit 0
else
	if   [ $1 = "-r" ]
		then ./crclient -u argha_ece19_2011 -i wlan0 -f CyberClient.conf
	elif [ $1 = "-s" ]
		then ./crclient -s
	elif [ $1 = "-q" ]
		then ./crclient -l argha_ece19_2011 && cd /tmp && rm -f CyberClient.argha_ece19_2011
	else
		echo -e "usage: $(basename $0) [ option ] \n\n--options \n	-r, --execute and login \n	-s, --setpreferences\n	-q, --logout & exit \n"
	exit 0
	fi
fi

