#!/bin/bash
cd "/c/Users/81801/dev/role-type-16"

echo "SVG Color Analysis"
echo "=================="
echo ""

# First file
file="生成オブジェクト.svg"
if [ -f "$file" ]; then
  colors=$(head -100 "$file" | grep -oE "fill: #[0-9a-fA-F]{6}" | head -5 | tr '\n' ' ')
  printf " 1. %-35s %s\n" "$file" "$colors"
fi

# Files 2-48
for i in 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48; do
  file="生成オブジェクト ($i).svg"
  if [ -f "$file" ]; then
    colors=$(head -100 "$file" | grep -oE "fill: #[0-9a-fA-F]{6}" | head -5 | tr '\n' ' ')
    printf "%2d. %-35s %s\n" $i "$file" "$colors"
  fi
done
