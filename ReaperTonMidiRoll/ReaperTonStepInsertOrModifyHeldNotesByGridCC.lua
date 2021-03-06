-- @description ReaperTon Step CC
-- @version 1.5
-- @author obogz, thanks tenfour
-- @about
-- 	Fast midi step tool.
-- @changelog
-- 	Added CC support and removed logs
-- @provides
-- 	[main=midi_editor] .
-- @donation https://paypal.me/obogz

local path = ({reaper.get_action_context()})[2]:match('^.+[\\//]')
dofile(path .. 'core_midi_roll.lua')
reaper.Undo_BeginBlock()

pcall(function()
	is_new,name,sec,cmd,rel,res,val = reaper.get_action_context()
	if val>64 then
		insertOrModifyHeldNotesByGrid(1)
	elseif val<64 then
		insertOrModifyHeldNotesByGrid(-1)
	end
 end)




reaper.Undo_EndBlock("ReaperTon Step - move Cursor CC fine By Grid Size And Alter Duration Of Held Notes", -1)
