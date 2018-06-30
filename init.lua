minetest.register_node("home_blocks:covered_stone",{
		description = "Stone Table",
		tiles = {
			"testmod_stone_table_top.png",
			"default_stone.png",
			"default_stone.png^home_blocks_stone_table_side.png",
			"default_stone.png^home_blocks_stone_table_side.png",
			"default_stone.png^home_blocks_stone_table_side.png",
			"default_stone.png^home_blocks_stone_table_side.png",
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

minetest.register_node("home_blocks:rope_ladder",{
		description = "Rope Ladder",
		drawtype = "signlike",
		wield_image = "home_blocks_rope_ladder.png",
		inventory_image = "home_blocks_rope_ladder.png",
		tiles = {"home_blocks_rope_ladder.png"},
		light_propagates = true,
		paramtype = "light",
		paramtype2 = "wallmounted",
    selection_box = {
        type = "wallmounted",
    },
		climbable = true,
		walkable = false,
		sunlight_propagates = true,
		groups = {oddly_breakable_by_hand = 1}
		})

minetest.register_craft({
		output = "home_blocks:rope_ladder 6",
		recipe = {
			{'farming:string','','farming:string'},
			{'farming:string','farming:string','farming:string'},
			{'farming:string','','farming:string'}
			}
		})
minetest.register_node("home_blocks:lightbulb",{
		description = "Light Bulb",
		drawtype = "plantlike",
		paramtype = "light",
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
		paramtype = "light",
		inventory_image = "testmod_lightbulb_lit.png",
		walkable = false,
		sunlight_propagates = true,
		light_source = 14,
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
	paramtype = "light",
	inventory_image = "home_blocks_clay_pot.png",
	drawtype = "plantlike",
	walkable = false,
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
			"default_desert_stone.png^home_blocks_stone_table_side.png",
			"default_desert_stone.png^home_blocks_stone_table_side.png",
			"default_desert_stone.png^home_blocks_stone_table_side.png",
			"default_desert_stone.png^home_blocks_stone_table_side.png",
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
		paramtype = "light",
		drawtype = "nodebox",
		tiles = {"home_blocks_ice_brick.png"},
		node_box = {
			type = "fixed",
			fixed = {
            {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
        }},
		groups = {cracky = 1}
	})

minetest.register_node("home_blocks:wood_table",{
      description = "Wooden Table",
      drawtype = "nodebox",
      tiles = {
      "home_blocks_wood_table_top.png",
      "home_blocks_wood_table_top.png",
      "home_blocks_wood_table_lags.png",
      "home_blocks_wood_table_lags.png",
      "home_blocks_wood_table_lags.png",
      "home_blocks_wood_table_lags.png"
   },
      groups = {wood = 1, choppy = 1},
      node_box = {
      type = "fixed",
      fixed = {
         {-0.5, 0.3125, -0.5, 0.5, 0.5, 0.5}, -- NodeBox1
         {0.25, 0.25, -0.5, 0.5, 0.3125, -0.25}, -- NodeBox2
         {0.25, 0.25, 0.25, 0.5, 0.3125, 0.5}, -- NodeBox3
         {-0.5, 0.25, 0.25, -0.25, 0.3125, 0.5}, -- NodeBox4
         {-0.5, 0.25, -0.5, -0.25, 0.3125, -0.25}, -- NodeBox5
         {0.3125, -0.5, 0.3125, 0.5, 0.25, 0.5}, -- NodeBox6
         {0.3125, -0.5, -0.5, 0.5, 0.25, -0.3125}, -- NodeBox7
         {-0.5, -0.5, 0.3125, -0.3125, 0.25, 0.5}, -- NodeBox8
         {-0.5, -0.5, -0.5, -0.3125, 0.25, -0.3125}, -- NodeBox9
      }
   }
})

minetest.register_craft({
		output = "home_blocks:wood_table",
		recipe = {
			{"group:wood","group:wood","group:wood"},
			{"default:stick","","default:stick"},
			{"default:stick","","default:stick"}
			}
		})

minetest.register_node("home_blocks:shingles_stair",{
		description = "Roof Shingles",
		paramtype = "light",
		paramtype2 = "facedir",
		tiles = {"home_blocks_shingles.png"},
		drawtype = "nodebox",
		paramtype = "light",
		node_box = {
        type = "fixed",
        fixed = {
            {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
            {-0.5, 0, 0, 0.5, 0.5, 0.5}
       }},
		groups = {choppy = 1}
	})

minetest.register_craft({
		output = "home_blocks:shingles_stair 8",
		recipe = {
			{"","","default:clay_lump"},
			{"","default:clay_lump","default:clay_lump"},
			{"default:clay_lump","default:clay_lump","default:clay_lump"}
		}
	})

minetest.register_node("home_blocks:shingles_stair_inner",{
		description = "Inner Roof Shingles",
		paramtype = "light",
		paramtype2 = "facedir",
		tiles = {"home_blocks_shingles.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.5, 0.5, 0.5},
				{-0.5, 0.0, -0.5, 0.0, 0.5, 0.0},
			}
		},
		groups = {choppy = 1}
	})

minetest.register_craft({
		output = "home_blocks:shingles_stair_inner 8",
		recipe = {
			{"","default:clay_lump",""},
			{"default:clay_lump","","default:clay_lump"},
			{"default:clay_lump","default:clay_lump","default:clay_lump"}
		}
	})

minetest.register_node("home_blocks:shingles_stair_outer",{
		description = "Outer Roof Shingles",
		paramtype = "light",
		paramtype2 = "facedir",
		tiles = {"home_blocks_shingles.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.0, 0.5, 0.5},
			}
		},
		groups = {choppy = 1}
	})

minetest.register_craft({
		output = "home_blocks:shingles_stair_outer 8",
		recipe = {
			{"","default:clay_lump",""},
			{"default:clay_lump","default:clay_lump","default:clay_lump"}
			}
	})

minetest.register_node("home_blocks:tin_roof",{
			description = "Tin Roof",
			paramtype = "light",
			paramtype2 = "facedir",
			tiles = {"home_blocks_tin_roof.png"},
			drawtype = "nodebox",
			node_box = {
       		 type = "fixed",
       		 fixed = {
        		    {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
       		     {-0.5, 0, 0, 0.5, 0.5, 0.5}
      		 }},
			groups = {cracky = 1}
		})

	minetest.register_craft({
			output = "home_blocks:tin_roof 8",
			recipe = {
				{'','',"default:tin_ingot"},
				{'',"default:tin_ingot","default:tin_ingot"},
				{"default:tin_ingot","default:tin_ingot","default:tin_ingot"}
				}
			})
	
	minetest.register_node("home_blocks:tin_roof_inner",{
		description = "Inner Tin Roof",
		paramtype = "light",
		paramtype2 = "facedir",
		tiles = {"home_blocks_tin_roof.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.5, 0.5, 0.5},
				{-0.5, 0.0, -0.5, 0.0, 0.5, 0.0},
			}
		},
		groups = {cracky = 1}
	})

minetest.register_craft({
		output = "home_blocks:tin_roof_inner 8",
		recipe = {
			{"","default:tin_ingot",""},
			{"default:tin_ingot","","default:tin_ingot"},
			{"default:tin_ingot","default:tin_ingot","default:tin_ingot"}
		}
	})
	
	minetest.register_node("home_blocks:tin_roof_outer",{
		description = "Outer Tin Roof",
		paramtype = "light",
		paramtype2 = "facedir",
		tiles = {"home_blocks_tin_roof.png"},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.0, 0.5, 0.5},
			}
		},
		groups = {cracky = 1}
	})

minetest.register_craft({
		output = "home_blocks:tin_roof_outer 8",
		recipe = {
			{"","default:tin_ingot",""},
			{"default:tin_ingot","default:tin_ingot","default:tin_ingot"}
			}
	})
	
minetest.register_node("home_blocks:chandelier",{
		description = "Gold Chandelier",
		drawtype = "plantlike",
		light_source = 14,
		walkable = false,
		climbable = true,
		inventory_image = "home_blocks_chandelier_thumb.png",
		wield_image = "home_blocks_chandelier_thumb.png",
		tiles = {
        {
            name = "home_blocks_chandelier.png",
            animation = {
                type     = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length   = .5
            }
        }
    },
		groups = {oddly_breakable_by_hand = 1}			
	})
		
minetest.register_craft({
		output = "home_blocks:chandelier",
		recipe = {
			{"","default:gold_ingot",""},
			{"default:torch","default:gold_ingot","default:torch"}
			}
		})

minetest.register_node("home_blocks:copper_chandelier",{
		description = "Copper Chandelier",
		drawtype = "plantlike",
		light_source = 14,
		walkable = false,
		climbable = true,
		inventory_image = "home_blocks_chandelier_copper_thumb.png",
		wield_image = "home_blocks_chandelier_copper_thumb.png",
		tiles = {
        {
            name = "home_blocks_chandelier_copper.png",
            animation = {
                type     = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length   = .5
            }
        }
    },
		groups = {oddly_breakable_by_hand = 1}			
	})
		
minetest.register_craft({
		output = "home_blocks:copper_chandelier",
		recipe = {
			{"","default:copper_ingot",""},
			{"default:torch","default:copper_ingot","default:torch"}
			}
		})

minetest.register_node("home_blocks:steel_chandelier",{
		description = "Steel Chandelier",
		drawtype = "plantlike",
		light_source = 14,
		walkable = false,
		climbable = true,
		inventory_image = "home_blocks_chandelier_steel_thumb.png",
		wield_image = "home_blocks_chandelier_steel_thumb.png",
		tiles = {
        {
            name = "home_blocks_chandelier_steel.png",
            animation = {
                type     = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length   = .5
            }
        }
    },
		groups = {oddly_breakable_by_hand = 1}			
	})
		
minetest.register_craft({
		output = "home_blocks:chandelier",
		recipe = {
			{"","default:steel_ingot",""},
			{"default:torch","default:steel_ingot","default:torch"}
			}
		})

minetest.register_node("home_blocks:chain", {
		description = "Steel Chain",
		drawtype = "plantlike",
		tiles = {"home_blocks_chain.png"},
		inventory_image = "home_blocks_chain.png",
		climbable = true,
		walkable = false,
		paramtype = "light",
		selection_box = {
	type = "fixed",
	fixed = {
		{-0.1875, -0.5000, -0.1875, 0.1875, 0.5000, 0.1875}
	}
},
		groups = {oddly_breakable_by_hand = 3}
		})


minetest.register_craft({
		output = "home_blocks:chain",
		recipe = {
			{"default:steel_ingot"},
			{"default:steel_ingot"},
			{"default:steel_ingot"}
			}
		})

minetest.register_node("home_blocks:copper_chain", {
		description = "Copper Chain",
		drawtype = "plantlike",
		tiles = {"home_blocks_copper_chain.png"},
		inventory_image = "home_blocks_copper_chain.png",
		climbable = true,
		walkable = false,
		paramtype = "light",
		selection_box = {
	type = "fixed",
	fixed = {
		{-0.1875, -0.5000, -0.1875, 0.1875, 0.5000, 0.1875}
	}
},
		groups = {oddly_breakable_by_hand = 3}
		})

minetest.register_craft({
		output = "home_blocks:copper_chain",
		recipe = {
			{"default:copper_ingot"},
			{"default:copper_ingot"},
			{"default:copper_ingot"}
			}
		})

minetest.register_node("home_blocks:gold_chain", {
		description = "Gold Chain",
		drawtype = "plantlike",
		tiles = {"home_blocks_gold_chain.png"},
		inventory_image = "home_blocks_gold_chain.png",
		climbable = true,
		walkable = false,
		paramtype = "light",
		selection_box = {
	type = "fixed",
	fixed = {
		{-0.1875, -0.5000, -0.1875, 0.1875, 0.5000, 0.1875}
	}
},
		groups = {oddly_breakable_by_hand = 3}
		})

minetest.register_craft({
		output = "home_blocks:gold_chain",
		recipe = {
			{"default:gold_ingot"},
			{"default:gold_ingot"},
			{"default:gold_ingot"}
			}
		})

				-- Animated Stones
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

minetest.register_node("home_blocks:rough_stone",{
		description = "Rough Stone",
		tiles = {"home_blocks_pathstone_other.png"},
		groups = {stone = 1, cracky = 1},
		diggable = true
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

--Carpets--

minetest.register_node("home_blocks:red_carpet",{
		description = "Red Carpet",
		tiles = {"home_blocks_red_carpet.png"},
		paramtype = "light",
		node_box = {
	type = "fixed",
	fixed = {
		{-0.1875, -0.5000, -0.1875, 0.1875, 0.5000, 0.1875}
	}
},
		groups = {wool = 1, oddly_breakable_by_hand = 3}
		})

minetest.register_craft({
		output = "home_blocks:red_carpet",
		recipe = {
			{"wool:red","wool:red"}
			}
		})
		
