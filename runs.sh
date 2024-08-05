#!/bin/sh
source $FUNCTION
architecture=$(getprop ro.product.cpu.abi)
COLOR_LIGHT_GREEN="\e[1;32m"
COLOR_RED="\e[0;31m"
LK="https://linktr.ee/henvxofficial"
local check_id=$(storm "https://henbz10real.github.io/fsav2/id.txt")
local check_vip=$(echo "$check_id" | grep -q "$AXERONID" && echo true || echo false)
if [ $check_vip = true ]; then
	if [ "$architecture" = "arm64-v8a" ]; then
		echo ""
		echo "
█▀▀ █ █░░ █▀▀ █▀ █▀▀ ▀█▀ ▀█▀ █ █▄░█ █▀▀ █▀
█▀░ █ █▄▄ ██▄ ▄█ ██▄ ░█░ ░█░ █ █░▀█ █▄█ ▄█"
		echo ""

		sleep 2

		echo ""
		echo "FILESETTINGS 64BIT - 2.0"
		echo ""

		sleep 2
		echo ""
		if [ -f /sdcard/AxeronModules/fsav2/bin/ind.apk ]; then
			if ! pm list packages | cut -f 2 -d : | grep -q bellavita.toast; then
				pm install /sdcard/AxeronModules/fsav2/bin/ind.apk >/dev/null 2>&1
				if ! pm list packages | cut -f 2 -d : | grep -q bellavita.toast; then
					cp /sdcard/AxeronModules/fsav2/bin/ind.apk /data/local/tmp >/dev/null 2>&1
					pm install /data/local/tmp/ind.apk >/dev/null 2>&1
					rm /data/local/tmp/ind.apk
				fi
			fi
		else
			pm uninstall bellavita.toast >/dev/null 2>&1
		fi
		status=$(pgrep -f hnx64) >/dev/null 2>&1
		if [ ! "$status" ]; then
			cp "/sdcard/AxeronModules/fsav2/bin/hnx64" /data/local/tmp
			chmod +x /data/local/tmp/hnx64
			nohup /data/local/tmp/hnx64 >/dev/null 2>&1 &
		fi
		sleep 2
		status=$(pgrep -f hnx64) >/dev/null 2>&1
		if [ "$status" ]; then
			echo "${COLOR_LIGHT_GREEN}Program is running in the background."
		else
			echo "${COLOR_RED}Program failed to run hnx"
		fi
		echo ""
	elif [ "$architecture" = "armeabi-v7a" ]; then
		echo ""
		echo "
█▀▀ █ █░░ █▀▀ █▀ █▀▀ ▀█▀ ▀█▀ █ █▄░█ █▀▀ █▀
█▀░ █ █▄▄ ██▄ ▄█ ██▄ ░█░ ░█░ █ █░▀█ █▄█ ▄█"
		echo ""

		sleep 2

		echo ""
		echo "FILESETTINGS 32BIT - 2.0"
		echo ""

		sleep 2
		echo ""
		if [ -f /sdcard/AxeronModules/fsav2/bin/ind.apk ]; then
			if ! pm list packages | cut -f 2 -d : | grep -q bellavita.toast; then
				pm install /sdcard/AxeronModules/fsav2/bin/ind.apk >/dev/null 2>&1
				if ! pm list packages | cut -f 2 -d : | grep -q bellavita.toast; then
					cp /sdcard/AxeronModules/fsav2/bin/ind.apk /data/local/tmp >/dev/null 2>&1
					pm install /data/local/tmp/ind.apk >/dev/null 2>&1
					rm /data/local/tmp/ind.apk
				fi
			fi
		else
			pm uninstall bellavita.toast >/dev/null 2>&1
		fi
		status=$(pgrep -f hnx32) >/dev/null 2>&1
		if [ ! "$status" ]; then
			cp "/sdcard/AxeronModules/fsav2/bin/hnx32" /data/local/tmp
			chmod +x /data/local/tmp/hnx32
			nohup /data/local/tmp/hnx32 >/dev/null 2>&1 &
		fi
		sleep 2
		status=$(pgrep -f hnx32) >/dev/null 2>&1
		if [ "$status" ]; then
			echo "${COLOR_LIGHT_GREEN}Program is running in the background."
		else
			echo "${COLOR_RED}Program failed to hnx"
		fi
		echo ""
	else
		echo "Unknown: $architecture"
	fi

else
	echo ""
	echo " Device tidak terdaftar ( nulldev ) "
        sleep 0.7
	echo " ${COLOR_RED}jangan lupa beli memek jan free mulu "
	echo ""
fi
