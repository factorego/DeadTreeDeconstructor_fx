local icons = {{
  icon = "__DeadTreeDeconstructor_fx__/thumbnail.png",
  icon_size = 288,
}}

local select = {
  border_color = {1, 0, 0},
  mode = {"deconstruct", "trees"},
  ignore_cannot_select_entities = true,
  ignore_cannot_select_tiles = true,
  cursor_box_type = "entity",
}
local reverse_select = {
  border_color = {1, 0, 0},
  mode = {"deconstruct", "trees"},
  ignore_cannot_select_entities = true,
  ignore_cannot_select_tiles = true,
  cursor_box_type = "entity",
}

data:extend({
  {
    type = "shortcut",
    name = "dead-tree-deconstructor",
    action = "lua",
    style = "red",
    icons = icons,
    small_icons = icons,
  },
  {
    type = "selection-tool",
    name = "dead-tree-deconstructor",
    subgroup = "tool",
    icons = icons,
    flags = { "only-in-cursor", "not-stackable", "spawnable" },
    hidden = true,
    stack_size = 1,
    select = select,
    alt_select = select,
    reverse_select = reverse_select,
    alt_reverse_select = reverse_select,
  },
})
