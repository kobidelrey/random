#!/bin/bash
# Bulk-export all SF Symbols to PNG in parallel.
set -u
cd "$(dirname "$0")"
SFSYM="/Users/kobievans/Applications/SF Symbols.app/Contents/Executables/sfsymbols"
JOBS="${JOBS:-6}"
mkdir -p icons
cat symbols.txt | xargs -P "$JOBS" -I {} "$SFSYM" export {} --format png --output "icons/{}.png"
echo "Done: $(ls icons/*.png 2>/dev/null | wc -l) / $(wc -l < symbols.txt) exported"
