#!/usr/bin/env bash

osascript <<EOD
  tell application "iTunes"
    if it is running then
      if exists name of current track then
        set aName to the name of current track
        set aArtist to the artist of current track
        do shell script "echo '" & aArtist & " - " & aName & "'"
      else
        do shell script "echo '[paused]'"
      end if
    else
      do shell script "echo 'Connection failed'"
    end if
  end tell
EOD
