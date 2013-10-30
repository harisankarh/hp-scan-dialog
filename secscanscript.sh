#!/bin/bash
input=$(zenity --text "Enter filename for scanned document" --entry)
retval=$?
case $retval in
0)
hp-scan -r 150 -o /tmp/$input.jpg
convert /tmp/$input.jpg ~/Desktop/scans/$input.pdf
rm /tmp/$input.jpg
echo "Input string is '$input'";;
1)
echo "Cancel pressed.";;
esac
