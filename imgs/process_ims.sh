#!/bin/bash

list=$(ls *.png)
for img in $list; do
convert $img -fuzz 1% -trim +repage $img
done

echo Success: Optimised images in ./
