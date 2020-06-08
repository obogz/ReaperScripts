# ReaperTonMidiRoll
Ableton like midi editor step input actions for Reaper

DEMO Video here: 
https://youtu.be/ZZQKqqFqgfo

To install either download and add the scripts manualy or use ReaPack add external repo funtion 
ReaPack: https://github.com/obogz/ReaperScripts/raw/master/index.xml

THIS VERSION IS BETA, some functionality might be added some bugs might exist

This project was started using this work: https://github.com/thenfour/ReaperScripts

Know issue: any new pressed note with the same velocity and pitch as the note at the cursor will not be considered a new note and will result in extending the previous note. This rearly happnes if you use a keyboard with variable velocity.

TODO: 
- Fix overlaping notes (here I need to think about what solution would be best, maybe compare with Ableton)
- see if there is another way to detect retriggerd notes besides comparing velocity
- cleanup, optimise

Long term:
- create an jsfx extension that improves on this
- the purpose of the script is to streamline and optimise midi input as much as possilbe: use the cursor to position yourself, use the keyboard to indicate what notes you want to operate on and use the keys or controller buttons (and/or knobs) to operate on held note. Basicaly like... peeling an apple, you hold what you are operating on with one hand and operate the tool with the other. Or like operating a plotter wood cutter, you hod the material in your hand and use your feet to operate the tool. (disclaimer, I don't know how a plotter works exactly but if I made one, I'd use footswitches :)) )
- main vision is to be able to use only a footcontroller (or two buttons on the keyboard) and a midi keyboard, no mouse
  + if at begining of a held note, hold it to move it in the grid back or forward (maybe here add separate actions) 
  + move held note up or down an octave (cursor must be on the note or at it's edges)
  + add a backspace mode where you delete using the cursor or search to see if a script for that already exists :)
  + select held notes under cursor
  + split held notes at cursor
  + maybe (complicating things too much) for the above do a ignore octave mode

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
- search for scripts for playing the midi item from the begining or 2 steps behind to audiotion your progress

