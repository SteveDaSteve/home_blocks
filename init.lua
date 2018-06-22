minetest.register_node("home_blocks:covered_stone",{
		description = "Stone Table",
		tiles = {
			"testmod_stone_table_top.png",
			"default_stone.png",
			"testmod_stone_table_side.png",
			"testmod_stone_table_side.png",
			"testmod_stone_table_side.png",
			"testmod_stone_table_side.png",
},
		is_ground_content = false,
		groups = {cracky = 2, stone = 1, flamable = 1},
		drops = "home_blocks:covered_stone"
})

minetest.register_craft({
    output = "home_blocks:covered_stone",
    recipe = {
        {"group:wool"},
        {"group:stone"},
			}
})

minetest.register_node("home_blocks:lightbulb",{
		description = "Light Bulb",
		drawtype = "plantlike",
		inventory_image = "testmod_lightbulb.png",
		walkable = false,
		tiles = {"testmod_lightbulb.png"},
		is_ground_content = false,
		groups = {oddly_breakable_by_hand = 1},
		drop = "home_blocks:lightbulb",
		on_rightclick = function(pos, node, player, itemstack, pointed_thing)
			minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "home_blocks:lightbulb_lit"})
				end
})

minetest.register_node("home_blocks:lightbulb_lit",{
		description = "Light Bulb (Lit)",
		drawtype = "plantlike",
		inventory_image = "testmod_lightbulb_lit.png",
		walkable = false,
		light_source = 10,
		tiles = {"testmod_lightbulb_lit.png"},
		is_ground_content = false,
		groups = {oddly_breakable_by_hand = 1, not_in_creative_inventory = 1},
		drop = "home_blocks:lightbulb",
		on_rightclick = function(pos, node, player, itemstack, pointed_thing)
			minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "home_blocks:lightbulb"})
				end
})

minetest.register_craft({
    output = "home_blocks:lightbulb 4",
    recipe = {
        {"default:glass"},
        {"default:mese_crystal_fragment"},
	{"group:stone"},
			}
})

minetest.register_node("home_blocks:crate", {
	description = 'Wooden Crate',
	tiles = {"home_blocks_crate.png"},
	groups = {choppy = 1},
	drop = "home_blocks:crate",
})

minetest.register_craft({
	output = "home_blocks:crate 2",
	recipe = {
		{"group:wood", "", "group:wood"},
		{"", "group:wood" ,""},
		{"group:wood", "", "group:wood"} 
	}
})

minetest.register_node("home_blocks:clay_pot", {
	description = "Clay Pot",
	inventory_image = "home_blocks_clay_pot.png",
	drawtype = "plantlike",
	tiles = {"home_blocks_clay_pot.png"},
	sunlight_propagates = true
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	drop = "home_blocks:clay_pot"
})

minetest.register_craft({
	output = "home_blocks:clay_pot",
	recipe = {
		{"default:clay_lump"}
	}
})
