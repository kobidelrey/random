#!/bin/bash
cd "$(dirname "$0")"
TOTAL=$(wc -l < symbols.txt)
while true; do
  DONE=$(ls icons/*.png 2>/dev/null | wc -l)
  echo "$(date '+%H:%M:%S') $DONE / $TOTAL"
  if [ "$DONE" -ge "$TOTAL" ]; then
    break
  fi
  sleep 60
done
git add icons
git -c user.name="opencode" -c user.email="opencode@local" commit -m "Add $TOTAL PNG icons (SF Symbols 27.0, regular/100pt/medium/label)"
echo "COMMITTED: $(git log --oneline -2)"
