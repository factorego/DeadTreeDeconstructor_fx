local icons = {{
  icon = "__DeadTreeDeconstructor__/thumbnail.png",
  icon_size = 288,
}}

local select = {
  mode = "deconstruct",
  entity_type_filters = { "tree" },
  tile_filters = { "tile-unknown" },
  cursor_box_type = "entity",
  border_color = { r = 1, g = 0, b = 0 }
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
  },
})
