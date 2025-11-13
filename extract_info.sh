#!/bin/bash

echo "SVG File Analysis - ViewBox & Dominant Colors"
echo "=============================================="
echo ""

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20; do
  if [ $i -eq 1 ]; then
    file="生成オブジェクト.svg"
  else
    file="生成オブジェクト ($i).svg"
  fi
  
  if [ -f "$file" ]; then
    viewbox=$(grep "viewBox" "$file" | head -1 | sed 's/.*viewBox="\([^"]*\)".*/\1/')
    printf "%2d. %-30s ViewBox: %s\n" $i "$file" "$viewbox"
  fi
done

