#!/bin/bash

echo start time: `date`

for i in *.raw;
do
    # convert -size 5120x3840 -depth 8 gray:$i jpg/`basename $i .raw`.jpg & # &fork then process
    convert -size 5120x3840 -depth 8 gray:$i jpg/`basename $i .raw`.jpg
    mv $i raw/
done

echo end time: `date`
