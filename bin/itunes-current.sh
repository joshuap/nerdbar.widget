#!/usr/bin/env bash

osascript <<EOD
  if application "iTunes" is running then
    tell application "iTunes"
      if exists name of current track then
        set aName to the name of current track
        set aArtist to the artist of current track
        do shell script "echo '" & aArtist & " - " & aName & "'"
      else
        do shell script "echo '[paused]'"
      end if
    end tell
  else
    do shell script "echo 'iTunes is not running'"
  end if
EOD
