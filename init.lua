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

minetest.register_abm({
		nodenames = {"testmod:covered_stone"},
		neighbors = {"fire:basic_flame"},
		interval = 5,
		chance = 5,
		action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "default:stone"})
	end
})
