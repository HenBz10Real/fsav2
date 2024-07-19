source $FUNCTION
echo ""
status=$(pgrep -f hnx) >/dev/null 2>&1
if [ "$status" ]; then
  pkill -f hnx
  rm /data/local/tmp/hnx
fi

status=$(pgrep -f hnx) >/dev/null 2>&1
if [ ! "$status" ]; then
  echo "Program is stopped in the background."
else
  echo "Program failed to stop."
fi
echo ""