
local function reverseRotate(event)
	local player = game.players[event.player_index]
	
	if player.cursor_stack.valid_for_read then
		
--		local cursor = player.cursor_stack
--		if cursor.type == 'blueprint' and cursor.is_blueprint_setup() then
--			
--			local entities = cursor.get_blueprint_entities()
--			local tiles = cursor.get_blueprint_tiles()
--			
--			TODO: blueprints
--			
--		elseif cursor.type ~= 'blueprint' then

		player.rotate_for_build()
		player.rotate_for_build()
		player.rotate_for_build()

--		end

	elseif player.selected then
	
		local entity = player.selected
	
		if entity.rotatable then
			entity.direction = (entity.direction - 2) % 8
		end
	end
end

script.on_event('ReverseRotate', reverseRotate)
