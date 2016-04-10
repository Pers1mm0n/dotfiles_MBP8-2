#!/bin/bash

xrandr --output LVDS1 --off
nitrogen --restore
synclient HorizTwoFingerScroll=1
synclient VertScrollDelta=-243
synclient HorizScrollDelta=-243
# synclient RTCornerButton=1
# synclient RBCornerButton=1
# synclient LTCornerButton=1
# synclient LBCornerButton=1
# synclient TapButton1=0
synclient PalmDetect=1
synclient VertEdgeScroll=0
