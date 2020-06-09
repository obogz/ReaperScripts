-- @description ReaperTon Step R
-- @version 1.3
-- @author obogz, thanks tenfour
-- @about
-- 	Fast midi step tool.
-- @changelog
-- 	fixed all known bugs 9 june 2020
-- @provides
-- 	[main=midi_editor] .
-- @donation https://paypal.me/obogz
 
local path = ({reaper.get_action_context()})[2]:match('^.+[\\//]')
dofile(path .. 'core_midi_roll.lua')
reaper.Undo_BeginBlock()

is_new,name,sec,cmd,rel,res,val = reaper.get_action_context()
if val ~= 0 then
	insertOrModifyHeldNotesByGrid(val)
end


reaper.Undo_EndBlock("ReaperTon Step - move Cursor CC fine By Grid Size And Alter Duration Of Held Notes", -1)

