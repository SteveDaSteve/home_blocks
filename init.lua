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

minetest.register_node("home_blocks:chandelier_copper",{
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
		output = "home_blocks:chandelier_copper",
		recipe = {
			{"","default:copper_ingot",""},
			{"default:torch","default:copper_ingot","default:torch"}
			}
		})

minetest.register_node("home_blocks:chandelier_steel",{
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

minetest.register_node("home_blocks:chain_copper", {
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
		output = "home_blocks:chain_copper",
		recipe = {
			{"default:copper_ingot"},
			{"default:copper_ingot"},
			{"default:copper_ingot"}
			}
		})

minetest.register_node("home_blocks:chain_gold", {
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

local carpets_table = { --name, color, colorize(hex or color name:intensity(1-255))
{'Black', 'black', 'black:225'},
{'Blue', 'blue', 'blue:225'},
{'Brown', 'brown', 'brown:225'},
{'Cyan', 'cyan', 'cyan:200'},
{'Dark Green', 'dark_green', 'green:225'},
{'Dark Grey', 'dark_grey', 'black:200'},
{'Green', 'green', '#32cd32:150'},
{'Grey', 'grey', 'black:100'},
{'Magenta', 'magenta', 'magenta:200'},
{'Orange', 'orange', 'orange:225'},
{'Pink', 'pink', 'pink:225'},
{'Red', 'red', 'red:225'},
{'Violet', 'violet', 'violet:225'},
{'White', 'white', 'white:1'},
{'Yellow', 'yellow', 'yellow:225'},
}

for i in ipairs (carpets_table) do
   local name = carpets_table[i][1]
   local color = carpets_table[i][2]
   local hex = carpets_table[i][3]
   
minetest.register_node('home_blocks:carpet_'..color, {
   description = name..' Carpet',
   drawtype = 'nodebox',
   tiles = {'home_blocks_'..color..'_carpet.png'},
   groups = {wool = 1, oddly_breakable_by_hand = 3},
   --inventory_image = 'mp_sofa.png^[colorize:'..hex,
   paramtype = "light",
   node_box = {
      type = "fixed",
      fixed = {
      {-0.5000, -0.5000, -0.5000, 0.5000, -0.4375, 0.5000},
   },
},
})
end
--Bonsais--
minetest.register_node("home_blocks:green_bonsai",{
		description = "Green Bonsai",
		drawtype = "plantlike",
		tiles = {"home_blocks_green_bonsai.png"},
		inventory_image = "home_blocks_green_bonsai.png",
		walkable = false,
		paramtype = "light",
		groups = {oddly_breakable_by_hand = 3}
		})

minetest.register_craft({
		output = "home_blocks:green_bonsai 2",
		recipe = {
			{"wool:green"},
			{"group:wood"},
			{"default:clay_lump"}
			}
		})

minetest.register_node("home_blocks:bonsai_red",{
		description = "Red Bonsai",
		drawtype = "plantlike",
		tiles = {"home_blocks_red_bonsai.png"},
		inventory_image = "home_blocks_red_bonsai.png",
		walkable = false,
		paramtype = "light",
		groups = {oddly_breakable_by_hand = 3}
		})

minetest.register_craft({
		output = "home_blocks:bonsai_red 2",
		recipe = {
			{"wool:red"},
			{"group:wood"},
			{"default:clay_lump"}
			}
		})

minetest.register_node("home_blocks:bonsai_pink",{
		description = "Pink Bonsai",
		drawtype = "plantlike",
		tiles = {"home_blocks_pink_bonsai.png"},
		walkable = false,
		inventory_image = "home_blocks_pink_bonsai.png",
		paramtype = "light",
		groups = {oddly_breakable_by_hand = 3}
		})

minetest.register_craft({
		output = "home_blocks:bonsai_pink 2",
		recipe = {
			{"wool:pink"},
			{"group:wood"},
			{"default:clay_lump"}
			}
		})

-- Music Boxes --

minetest.register_node("home_blocks:music_box",{
		description = "Music Box",
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		tiles = {
			"home_blocks_music_top.png",
			"home_blocks_music_bottom.png",
			"home_blocks_music_side2.png",
			"home_blocks_music_side.png",
			"home_blocks_music_side.png",
			"home_blocks_music_side.png",
},
		node_box = {
	type = "fixed",
	fixed = {
		{-0.3125, -0.5000, -0.3125, 0.3125, -0.1250, 0.3125}
	}
},
		is_ground_content = false,
		groups = {choppy = 3, oddly_breakable_by_hand = 3, flamable = 1},
})

-- Tiki Torch --
minetest.register_node("home_blocks:tiki_torch_bottom",{
		description = "Tiki Torch",
		tiles = {"home_blocks_tiki_torch_stick.png"},
		inventory_image = "home_blocks_tiki_torch_item.png",
		wield_image = "home_blocks_tiki_torch_item.png",
		drawtype = "nodebox",
		node_box = {
	type = "fixed",
	fixed = {
		{-0.1250, -0.5000, -0.1250, 0.1250, 0.5000, 0.1250}
	}
},
		paramtype = light,
		groups = {oddly_breakable_by_hand = 2},
		on_construct = function(pos)
			minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z}, {name = "home_blocks:tiki_torch_top"})
			end,
		after_destruct = function(pos, oldnode)
			minetest.remove_node({x = pos.x, y = pos.y + 1, z = pos.z})
			end
		})

minetest.register_node("home_blocks:tiki_torch_top", {
		description = "Tiki Torch Top (You should not have this!)",
		drawtype = "nodebox",
		light_source = 14,
		tiles = {
			"home_blocks_tiki_torch_coals.png",
			"home_blocks_tiki_torch_bottom.png",
			"home_blocks_tiki_torch_bowl.png",
			"home_blocks_tiki_torch_bowl.png",
			"home_blocks_tiki_torch_bowl.png",
			"home_blocks_tiki_torch_bowl.png",
},
		node_box = {
	type = "fixed",
	fixed = {
		{-0.1250, -0.5000, -0.1250, 0.1250, -0.1875, 0.1250},
		{-0.1875, -0.1875, -0.1875, 0.1875, 0.1875, 0.1875}
	}
},
		paramtype = light,
		groups = {oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
		drop = "home_blocks_tiki_torch_bottom",
		after_destruct = function(pos, oldnode)
			minetest.remove_node({x = pos.x, y = pos.y - 1, z = pos.z})
			end
		})
--Bricks--
--X
minetest.register_node("home_blocks:brick_mese", {
		description = "Mese Brick",
		tiles = {"home_blocks_brick_mese.png"},
		groups = {cracky = 3}
		})

minetest.register_craft({
		output = "home_blocks:brick_mese 4",
		recipe = {
			{"default:mese_crystal","default:mese_crystal"},
			{"default:mese_crystal","default:mese_crystal"}
			}
		})

--X
minetest.register_node("home_blocks:brick_gold", {
		description = "Gold Brick",
		tiles = {"home_blocks_brick_gold.png"},
		groups = {cracky = 3}
		})

minetest.register_craft({
		output = "home_blocks:brick_gold 4",
		recipe = {
			{"default:gold_ingot","default:gold_ingot"},
			{"default:gold_ingot","default:gold_ingot"}
			}
		})

--Cardboard Box

minetest.register_node("home_blocks:box_cardboard",{
		description = "Cardboard Box",
		tiles = {
			"home_blocks_box_top.png",
			"home_blocks_box_bottom.png",
			"home_blocks_box_side2.png",
			"home_blocks_box_side2.png",
			"home_blocks_box_side1.png",
			"home_blocks_box_side1.png",
},
		is_ground_content = false,
		groups = {oddly_breakable_by_hand = 2, flamable = 1},
})

minetest.register_craft({
		output = "home_blocks:box_cardboard",
		recipe = {
			{"default:paper","default:paper","default:paper"},
			{"default:paper","","default:paper"},
			{"default:paper","default:paper","default:paper"}
		}
	})

--Picket Fence
minetest.register_node("home_blocks:fence_picket",{
		description = "Picket Fence",
		drawtype = "nodebox",
		node_box = {
	type = "fixed",
	fixed = {
		{-0.5000, -0.5000, -0.06250, 0.5000, 0.3125, 0.06250},
		{-0.5000, 0.3125, -0.06250, -0.3125, 0.3750, 0.06250},
		{-0.2500, 0.3125, -0.06250, -0.06250, 0.3750, 0.06250},
		{0.000, 0.3125, -0.06250, 0.1875, 0.3750, 0.06250},
		{0.2500, 0.3125, -0.06250, 0.4375, 0.3750, 0.06250},
		{-0.4375, 0.3750, -0.06250, -0.3750, 0.4375, 0.06250},
		{-0.1875, 0.3750, -0.06250, -0.1250, 0.4375, 0.06250},
		{0.06250, 0.3750, -0.06250, 0.1250, 0.4375, 0.06250},
		{0.3125, 0.3750, -0.06250, 0.3750, 0.4375, 0.06250},
		{-0.5000, 0.000, 0.06250, 0.5000, 0.1250, 0.1250}
	}
},
		tiles = {
			"home_blocks_fence_picket_other.png",
			"home_blocks_fence_picket_other.png",
			"home_blocks_fence_picket_other.png",
			"home_blocks_fence_picket_other.png",
			"home_blocks_fence_picket_back.png",
			"home_blocks_fence_picket_front.png",
},
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {choppy = 2, flamable = 1},
})

--Fountain
minetest.register_node("home_blocks:fountain",{
		description = "Fountain",
		drawtype = "nodebox",
		node_box = {
	type = "fixed",
	fixed = {
		{-0.5000, -0.5000, -0.5000, 0.5000, -0.2500, 0.5000},
		{-0.2500, -0.3125, -0.2500, 0.2500, 0.1250, 0.2500},
		{-0.1250, 0.1250, -0.1250, 0.1250, 0.3125, 0.1250}
	}
},
		tiles = {
				{
            	name = "home_blocks_fountain_top.png",
            	animation = {
              	  type     = "vertical_frames",
              	  aspect_w = 10,
              	  aspect_h = 10,
               	 length   = .9
            	}
       	 },
			"home_blocks_fountain_bottom.png",
			{
            	name = "home_blocks_fountain_sides.png",
            	animation = {
              	  type     = "vertical_frames",
              	  aspect_w = 10,
              	  aspect_h = 10,
               	 length   = .9
            	}
       	 },
			{
		name = "home_blocks_fountain_sides.png",
            	animation = {
              	  type     = "vertical_frames",
              	  aspect_w = 10,
              	  aspect_h = 10,
               	 length   = .9
            	}
       	 },
			{
		name = "home_blocks_fountain_sides.png",
            	animation = {
              	  type     = "vertical_frames",
              	  aspect_w = 10,
              	  aspect_h = 10,
               	 length   = .9
            	}
       	 },
			{
	        name = "home_blocks_fountain_sides.png",
            	animation = {
              	  type     = "vertical_frames",
              	  aspect_w = 10,
              	  aspect_h = 10,
               	 length   = .9
            	}
       	 },
},
		is_ground_content = false,
		groups = {cracky = 2,},
})

--Clock
minetest.register_node("home_blocks:clock_tall",{
		description = "Grandfather Clock",
		drawtype = "nodebox",
		node_box = {
	type = "fixed",
	fixed = {
		{-0.4375, -0.4375, -0.3125, 0.4375, 0.5625, 0.3125},
		{-0.4375, 0.5000, -0.3125, 0.4375, 1.438, 0.3125},
		{-0.4375, -0.5000, -0.3125, -0.3750, -0.4375, -0.2500},
		{0.3750, -0.5000, -0.3125, 0.4375, -0.4375, -0.2500},
		{-0.4375, -0.5000, 0.2500, -0.3750, -0.4375, 0.3125},
		{0.3750, -0.5000, 0.2500, 0.4375, -0.4375, 0.3125},
		{-0.3750, 0.5000, -0.3125, 0.3750, 1.500, 0.3125}
	}
},
		tiles = {
			"home_blocks_clock_tall_top.png",
			"home_blocks_fountain_tall_bottom.png",
			"home_blocks_clock_tall_side.png",
			"home_blocks_clock_tall_side.png",
			"home_blocks_clock_tall_back.png",
			{
	        name = "home_blocks_clock_tall_front.png",
            	animation = {
              	  type     = "vertical_frames",
              	  aspect_w = 16,
              	  aspect_h = 32,
               	 length   = 1
            	}
       	 },
},
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {choppy = 2, flamable = 1},
})
