# ReaperTonMidiRoll
Ableton like midi editor step input actions for Reaper

DEMO Video here: 
https://youtu.be/ZZQKqqFqgfo


THIS VERSION IS BETA, some functionality might be added some bugs might exist, instalation migh trow exeptions if not done right (need to integrate in ReaPack)

To install, copy the scripts to the reaper script directory and add them in your Midi Editor actions.
To use make sure you have the normal step recording option turned off!

This project was started using this work: https://github.com/thenfour/ReaperScripts


Know issue: any new pressed note with the same velocity and pitch as the note at the cursor will not be considered a new note and will result in extending the previous note. This rearly happnes if you use a keyboard with variable velocity.

TODO: 
- Fix overlaping notes (here I need to think about what solution would be best, maybe compare with Ableton)
- add a backspace mode where you delete using the cursor
- see if there is another way to detect retriggerd notes besides comparing velocity
- cleanup, optimise, organise and add integration with ReaPack

Long term:
- create an jsfx extension that improves on this
- the purpose of the script is to streamline and optimise midi input as much as possilbe 
- main vision is to be able to use only a footcontroller and a midi keyboard, no mouse no keyboard
  + if at begining of a note, hold it to move it in the grid back or forward (maybe here add separate actions)
  + move held note up or down an octave (cursor must be on the note or at it's edges)



If you think this is worth a beer or two :D
https://paypal.me/obogz

I build this script mainly for my own confot, but as I find ways to improve my flow I'll add them in the folowing section

Tips and tricks:
- Map actions to a midi foot controller so you can play with both hands
- Map tripplet toggle action to a key or foot controller
- Map grid change action(s) or use a confortable grid size
- To delete specific notes move at the end of the note(s) and hold the coresponding key on your controller and press back untill you fully deleted
- While you go back you are in delete mode (held keys will start deleting as the cursor moves backward)
- if no notes are pressed the cursor will just navigate back and forward
- I successfully tested this using the arrow keys

