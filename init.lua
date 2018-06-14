minetest.register_node("testmod:covered_stone",{
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
		groups = {cracky = 2, stone = 1},
		drops = "testmod:covered_stone"
})

minetest.register_craft({
    output = "testmod:covered_stone",
    recipe = {
        {"group:wool"},
        {"default:stone"},
			}
    })
