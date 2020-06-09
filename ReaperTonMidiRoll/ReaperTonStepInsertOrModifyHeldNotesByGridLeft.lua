-- @description ReaperTon Step L
-- @version 1.4
-- @author obogz, thanks tenfour
-- @about
-- 	Fast midi step tool
-- @changelog
-- 	fixed all known bugs 9 june 2020
-- @provides
-- 	core_midi_roll.lua
-- 	[main=midi_editor] .
-- @donation https://paypal.me/obogz

local path = ({reaper.get_action_context()})[2]:match('^.+[\\//]')
dofile(path .. 'core_midi_roll.lua')
reaper.Undo_BeginBlock()


pcall(function()
	insertOrModifyHeldNotesByGrid(-1)
end)

reaper.Undo_EndBlock("ReaperTon Step - move Cursor Left By Grid Size And Alter Duration Of Held Notes", -1)

