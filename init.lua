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

minetest.register_abm({
		label = "Tablecloth Burning",
		neighbors = "fire:basic_flame",
		nodenames = {"home_blocks:covered_stone"},
		neighbors = {"fire:basic_flame", "fire:permanent_flame"},
		interval = 5,
		chance = 5,
		action = function(pos, node, active_object_count, active_object_count_wider) 
			local fire_on_top = minetest.get_node{(x = pos.x, y = pos.y + 1, z = pos.z)}[1]
			if fire_on_top == fire:basic_flame or fire_on_top == fire:permanent_flame then
			minetest.swap_node(pos, default:stone)
			end
})
