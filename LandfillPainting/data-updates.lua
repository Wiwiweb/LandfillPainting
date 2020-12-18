for _,v in pairs(data.raw.tile) do
  if v.minable then
    local found = false
    for _,c in pairs(v.collision_mask or {}) do
      if c == 'layer-15' then
        found = true
      end
    end
    if not found then
      if not v.collision_mask then
        v.collision_mask = {}
      end
      table.insert(v.collision_mask, 'layer-15')
    end
  end
end

bobmods.lib.tech.remove_recipe_unlock('water-washing-2', 'solid-mud-landfill')
bobmods.lib.tech.add_recipe_unlock('water-washing-1', 'solid-mud-landfill')
