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
        {"default:stone"},
			}
})

minetest.register_node("home_blocks:lightbulb",{
		description = "Light Bulb",
		drawtype = "plantlike",
		inventory_image = "testmod_lightbulb.png",
		walkable = false,
		sunlight_propagates = true,
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
		sunlight_propagates = true,
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
	sunlight_propagates = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	drop = "home_blocks:clay_pot"
})

minetest.register_craft({
	output = "home_blocks:clay_pot",
	recipe = {
		{"default:clay_lump"}
	}
})

minetest.register_node("home_blocks:covered_stone_desert",{
		description = "Desert Stone Table",
		tiles = {
			"testmod_stone_table_top.png",
			"default_desert_stone.png",
			"home_blocks_stone_table_desert.png",
			"home_blocks_stone_table_desert.png",
			"home_blocks_stone_table_desert.png",
			"home_blocks_stone_table_desert.png",
},
		is_ground_content = false,
		groups = {cracky = 2, stone = 1, flamable = 1},
		drop = "home_blocks:covered_stone_desert"
})

minetest.register_craft({
    output = "home_blocks:covered_stone_desert",
    recipe = {
        {"group:wool"},
        {"default:desert_stone"},
			}
})

minetest.register_node("home_blocks:ice_brick",{
		description = "Ice Brick",
		tiles = {"home_blocks_ice_brick.png"},
		groups = {cracky = 1}
	})
		
minetest.register_craft({
		output = "home_blocks:ice_brick 6",
		recipe = {
			{"default:ice","default:ice","default:ice"},
			{"default:ice","default:ice","default:ice"},
			{"default:ice","default:ice","default:ice"},
		}
})

minetest.register_node("home_blocks:half_ice_brick",{
		description = "Ice Brick Slab",
		drawtype = "nodebox",
		tiles = {"home_blocks_ice_brick.png"},
		node_box = {
			type = "fixed",
			fixed = {
            {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
        }},
		groups = {cracky = 1}
	})

-- Anamated Stones
minetest.register_node("home_blocks:path_stone",{
		description = "Path Stone",
		paramtype2 = "facedir",
		light_source = 6,
    tiles = {
        {
            name = "home_blocks_pathstone.png",
            animation = {
                type     = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length   = 4.0
            }
        }
    },
		groups = {cracky = 1}
	})

minetest.register_craft({
		output = "home_blocks:path_stone 4",
		recipe = {
			{"default:diamond","",""},
			{"","home_blocks:",""},
			{"","",""}
		}
})

minetest.register_node("home_blocks:rough_stone"{
		description = "Rough Stone",
		tiles = "home_blocks_pathstone_other",
		group = {stone = 1, cracky = 1}
	})

minetest.register_craft({
		output = "home_blocks:rough_stone",
		recipe = {
			{"default:gravel"},
			{"group:stone"}
		}
	})

minetest.register_node("home_blocks:spot_stone",{
		description = "Spot Stone",
		light_source = 6,
    tiles = {
        {
            name = "home_blocks_spot_stone.png",
            animation = {
                type     = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length   = 4.0
            }
        }
    },
		groups = {cracky = 1}
	})

minetest.register_craft({
		output = "home_blocks:spot_stone 4",
		recipe = {
			{"","default:diamond",""},
			{"","home_blocks:",""},
			{"","",""}
		}
})

minetest.register_node("home_blocks:arrow_stone",{
		description = "Arrow Stone",
		paramtype2 = "facedir",
		light_source = 6,
    tiles = {
        {
            name = "home_blocks_arrow_stone.png",
            animation = {
                type     = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length   = 4.0
            }
        }
    },
		groups = {cracky = 1}
	})

minetest.register_craft({
		output = "home_blocks:arrow_stone 4",
		recipe = {
			{"","","default:diamond"},
			{"","home_blocks:",""},
			{"","",""}
		}
})
