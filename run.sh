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
	cp /sdcard/AxeronModules/fsav2/bin/read.txt /sdcard/AxeronModules/fsav2/bin/read.txt.temp
	counter=1
	package_list=$(pm list packages | cut -f 2 -d :)
	while IFS= read -r gamelist; do
		line=$(echo "$gamelist" | grep -v " ")
		if echo "$package_list" | grep -q "$line"; then
			echo "$counter. $line"
			counter=$((counter + 1))
		else
			sed -i /"$line"/d /sdcard/AxeronModules/fsav2/bin/read.txt.temp
		fi
	done </sdcard/AxeronModules/fsav2/bin/read.txt
	mv /sdcard/AxeronModules/fsav2/bin/read.txt.temp /sdcard/AxeronModules/fsav2/bin/read.txt
	echo ""
	if [ -f /sdcard/AxeronModules/fsav2/bin/toast.apk ]; then
		if ! pm list packages | cut -f 2 -d : | grep -q bellavita.toast; then
			pm install /sdcard/AxeronModules/fsav2/bin/toast.apk >/dev/null 2>&1
			if ! pm list packages | cut -f 2 -d : | grep -q bellavita.toast; then
				cp /sdcard/AxeronModules/fsav2/bin/toast.apk /data/local/tmp >/dev/null 2>&1
				pm install /data/local/tmp/toast.apk >/dev/null 2>&1
				rm /data/local/tmp/toast.apk
			fi
		fi
	else
		pm uninstall bellavita.toast >/dev/null 2>&1
	fi
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
