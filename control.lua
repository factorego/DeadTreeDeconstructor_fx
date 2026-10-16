---@diagnostic disable: need-check-nil

script.on_event(defines.events.on_lua_shortcut, function(event)
  if event.prototype_name ~= "dead-tree-deconstructor" then
    return
  end

  local player = game.get_player(event.player_index)
  if player.clear_cursor() then
    player.cursor_stack.set_stack({ name = "dead-tree-deconstructor" })
  end
end)

-- normal
script.on_event(defines.events.on_player_selected_area, function(event)
  if event.item ~= "dead-tree-deconstructor" then
    return
  end

  local player = game.get_player(event.player_index)
  local n = player.mod_settings["dead-tree-deconstructor-percentage"].value / 100
  for _, entity in ipairs(event.entities) do
    if entity.tree_stage_index_max == 0 or entity.tree_stage_index / entity.tree_stage_index_max >= n then
        entity.order_deconstruction(player.force, player)
    end
  end
end)

-- alt
script.on_event(defines.events.on_player_alt_selected_area, function(event)
  if event.item ~= "dead-tree-deconstructor" then
    return
  end

  local player = game.get_player(event.player_index)
  local n = player.mod_settings["dead-tree-deconstructor-percentage"].value / 100
  for _, entity in ipairs(event.entities) do
    if not (entity.tree_stage_index_max == 0 or entity.tree_stage_index / entity.tree_stage_index_max >= n) then
        entity.order_deconstruction(player.force, player)
    end
  end
end)