#!/usr/bin/env python3
import os
import re

svg_files = sorted([f for f in os.listdir('.') if f.endswith('.svg')])

print("File Analysis:")
print("=" * 80)

for idx, svg_file in enumerate(svg_files, 1):
    with open(svg_file, 'r', encoding='utf-8') as f:
        content = f.read(5000)  # Read first 5000 chars
    
    # Extract primary colors
    colors = re.findall(r'fill:\s*#([0-9a-fA-F]{6})', content)[:8]
    
    print(f"{idx:2d}. {svg_file:30s} Colors: {' '.join(['#'+c for c in colors[:5]])}")

print("\n" + "=" * 80)
