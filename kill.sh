source $FUNCTION
echo ""
status=$(pgrep -f hnx) >/dev/null 2>&1
if [ "$status" ]; then
  pkill -f hnx64
  pkill -f hnx32
  rm /data/local/tmp/hnx64 >/dev/null 2>&1
  rm /data/local/tmp/hnx32 >/dev/null 2>&1
fi

status=$(pgrep -f hnx) >/dev/null 2>&1
if [ ! "$status" ]; then
  echo "Program is stopped in the background."
else
  echo "Program failed to stop."
fi
echo ""
