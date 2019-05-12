#!/bin/sh

# ------------------------------------------------------------------------------------
# Author: Sven Kammerer (admin@ganz-sicher.net)
# Description: 	This little scripts checks if an instance of urxvt is running.
# 		If so, it is able to determine the window-id using xdotool
# 		and append a new tab (urxvt tab extension).
#
#		You can run this script from a keyboard shortcut (e.g. Ctrl+Alt+T)
#		so that only one instance of urxvt will be used.
#
# Usage:	Call the script without arguments. Use -h or --help to see this text.
# ------------------------------------------------------------------------------------

# dependencies:
# pidof, awk, xdotool, (urxvt with perl tab extension)

# settings
appendToSession=true	# true = append tabs, false = always open a new urxvt instance

# variables
progName="urxvt"
newInstanceCommand="urxvtc -pe tabbed"
processId=$(pidof $progName | awk '{print $NF}' | awk '{print $1}')


# print help?
if  [ $# -gt 0 ] ; then
 if [ $1 == "--help" ] || [ $1 == "-h" ] ; then
  awk '/# ----/{++t}t==1' $0
  exit
 fi
fi

if $appendToSession && [ $? -eq 0 ]; then
 # process found. get windowid and create a new tab
 idList=$(xdotool search --pid $processId 2>/dev/null)

 if [ $? -eq 0 ]; then
  # windowid(s) found, use the first one
  windowId=$(echo $idList | awk 'NR == 1' | awk '{print $1}')

  if [ ! -z "$windowId" ] ; then
   xdotool windowfocus $windowId
   xdotool windowraise $windowId
   xdotool keydown shift
   xdotool key Down
   xdotool keyup shift
   exit
  fi
 fi
fi

# process not found - start a new instance
$($newInstanceCommand &)

exit

