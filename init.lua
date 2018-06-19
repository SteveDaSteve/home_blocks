minetest.register_node("home_blocks:covered_stone",{
		description = "Stone Table",
		tiles = {
			"home_blocks_stone_table_top.png",
			"default_stone.png",
			"home_blocks_stone_table_side.png",
			"home_blocks_stone_table_side.png",
			"home_blocks_stone_table_side.png",
			"home_blocks_stone_table_side.png",
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

minetest.register_node("home_blocks:light_fixture",{
		description = "Light Bulb",
		drawtype = "plantlike",
		light_source = 10
		tiles = {"testmod_lightbulb.png"},
		is_ground_content = false,
		groups = {oddly_breakable_by_hand = 1},
		drops = "home_blocks:light_fixture"
})

minetest.register_craft({
    output = "home_blocks:light_fixture 4",
    recipe = {
        {"default:glass"},
        {"default:mese_crystal_fragment"},
	{"group:stone"},
			}
})
