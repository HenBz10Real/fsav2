#!/bin/sh
source $FUNCTION
LK="https://linktr.ee/henvxofficial"
EXPIRED="20240726"
EX=$(date +'%Y%m%d')
if [ "$EX" -ge "$EXPIRED" ]; then
	echo
	sleep 1
	echo "Script telah expired, buy script permanent "
	sleep 0.3
	echo
	am start -a android.intent.action.VIEW -d ${LK} >/dev/null 2>&1
else
	echo ""
	echo "
█▀▀ █ █░░ █▀▀ █▀ █▀▀ ▀█▀ ▀█▀ █ █▄░█ █▀▀ █▀
█▀░ █ █▄▄ ██▄ ▄█ ██▄ ░█░ ░█░ █ █░▀█ █▄█ ▄█"
	echo ""

	sleep 2

	echo ""
	echo "FILESETTINGS BETA TEST - 2.0"
	echo ""

	sleep 2

	status=$(pgrep -f hnx) >/dev/null 2>&1
	if [ ! "$status" ]; then
		cp "/sdcard/AxeronModules/fsav2/bin/hnx" /data/local/tmp
		chmod +x /data/local/tmp/hnx
		nohup /data/local/tmp/hnx >/dev/null 2>&1 &
	fi

	sleep 2

	status=$(pgrep -f hnx) >/dev/null 2>&1
	if [ "$status" ]; then
		echo "Program is running in the background."
	else
		echo "Program failed to hnx"
	fi
	echo ""
fi
