#!/bin/bash

for folder in $1/*; do
  basename=${folder##*[/|\\]}
  output_name=/home/alex/Videos/TeslaCam_processed/$basename.mp4
  python3 /home/alex/git/tesla_dashcam/tesla_dashcam/tesla_dashcam.py --output $output_name $folder
done;
