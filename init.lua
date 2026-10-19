-- Toycity Mod for Minetest / Luanti
-- Purely decorative miniature city models that sit on the ground and fall like sand.

local modname = minetest.get_current_modname()
local sounds = minetest.get_modpath("default") and default.node_sound_stone_defaults() or nil

local models = {
    {
        name = "building_a",
        description = "Toy City Building A",
        mesh = "toycity_building_a.obj",
        box = {-0.442, -0.500, -0.470, 0.442, 0.793, 0.470},
    },
    {
        name = "building_b",
        description = "Toy City Building B",
        mesh = "toycity_building_b.obj",
        box = {-0.485, -0.500, -0.470, 0.485, 0.793, 0.470},
    },
    {
        name = "building_c",
        description = "Toy City Building C",
        mesh = "toycity_building_c.obj",
        box = {-0.405, -0.500, -0.500, 0.405, 0.319, 0.500},
    },
    {
        name = "building_d",
        description = "Toy City Building D",
        mesh = "toycity_building_d.obj",
        box = {-0.420, -0.500, -0.450, 0.420, 0.793, 0.450},
    },
    {
        name = "building_e",
        description = "Toy City Building E",
        mesh = "toycity_building_e.obj",
        box = {-0.500, -0.500, -0.307, 0.500, 0.045, 0.307},
    },
    {
        name = "building_f",
        description = "Toy City Building F",
        mesh = "toycity_building_f.obj",
        box = {-0.408, -0.500, -0.500, 0.408, 1.144, 0.500},
    },
    {
        name = "building_g",
        description = "Toy City Building G",
        mesh = "toycity_building_g.obj",
        box = {-0.485, -0.500, -0.461, 0.485, 1.193, 0.461},
    },
    {
        name = "building_h",
        description = "Toy City Building H",
        mesh = "toycity_building_h.obj",
        box = {-0.438, -0.500, -0.500, 0.438, 0.783, 0.500},
    },
    {
        name = "building_i",
        description = "Toy City Building I",
        mesh = "toycity_building_i.obj",
        box = {-0.476, -0.500, -0.500, 0.476, 0.790, 0.500},
    },
    {
        name = "building_j",
        description = "Toy City Building J",
        mesh = "toycity_building_j.obj",
        box = {-0.500, -0.500, -0.322, 0.500, 0.313, 0.322},
    },
    {
        name = "building_k",
        description = "Toy City Building K",
        mesh = "toycity_building_k.obj",
        box = {-0.500, -0.500, -0.226, 0.500, 0.206, 0.226},
    },
    {
        name = "building_l",
        description = "Toy City Building L",
        mesh = "toycity_building_l.obj",
        box = {-0.489, -0.500, -0.500, 0.489, 1.119, 0.500},
    },
    {
        name = "building_m",
        description = "Toy City Building M",
        mesh = "toycity_building_m.obj",
        box = {-0.499, -0.500, -0.500, 0.499, 2.036, 0.500},
    },
    {
        name = "building_n",
        description = "Toy City Building N",
        mesh = "toycity_building_n.obj",
        box = {-0.500, -0.500, -0.392, 0.500, 0.569, 0.392},
    },
    {
        name = "building_skyscraper_a",
        description = "Toy City Building Skyscraper A",
        mesh = "toycity_building_skyscraper_a.obj",
        box = {-0.500, -0.500, -0.500, 0.500, 1.618, 0.500},
    },
    {
        name = "building_skyscraper_b",
        description = "Toy City Building Skyscraper B",
        mesh = "toycity_building_skyscraper_b.obj",
        box = {-0.500, -0.500, -0.500, 0.500, 2.794, 0.500},
    },
    {
        name = "building_skyscraper_c",
        description = "Toy City Building Skyscraper C",
        mesh = "toycity_building_skyscraper_c.obj",
        box = {-0.461, -0.500, -0.500, 0.461, 2.440, 0.500},
    },
    {
        name = "building_skyscraper_d",
        description = "Toy City Building Skyscraper D",
        mesh = "toycity_building_skyscraper_d.obj",
        box = {-0.461, -0.500, -0.500, 0.461, 3.441, 0.500},
    },
    {
        name = "building_skyscraper_e",
        description = "Toy City Building Skyscraper E",
        mesh = "toycity_building_skyscraper_e.obj",
        box = {-0.500, -0.500, -0.480, 0.500, 2.651, 0.480},
    },
    {
        name = "detail_awning_wide",
        description = "Toy City Detail Awning Wide",
        mesh = "toycity_detail_awning_wide.obj",
        box = {-0.400, -0.500, -0.074, 0.400, -0.100, 0.074},
    },
    {
        name = "detail_awning",
        description = "Toy City Detail Awning",
        mesh = "toycity_detail_awning.obj",
        box = {-0.200, -0.500, -0.074, 0.200, -0.100, 0.074},
    },
    {
        name = "detail_overhang_wide",
        description = "Toy City Detail Overhang Wide",
        mesh = "toycity_detail_overhang_wide.obj",
        box = {-0.500, -0.500, -0.100, 0.500, -0.100, 0.100},
    },
    {
        name = "detail_overhang",
        description = "Toy City Detail Overhang",
        mesh = "toycity_detail_overhang.obj",
        box = {-0.250, -0.500, -0.100, 0.250, -0.100, 0.100},
    },
    {
        name = "detail_parasol_a",
        description = "Toy City Detail Parasol A",
        mesh = "toycity_detail_parasol_a.obj",
        box = {-0.173, -0.500, -0.200, 0.173, -0.050, 0.200},
    },
    {
        name = "detail_parasol_b",
        description = "Toy City Detail Parasol B",
        mesh = "toycity_detail_parasol_b.obj",
        box = {-0.173, -0.500, -0.200, 0.173, -0.050, 0.200},
    },
    {
        name = "low_detail_building_a",
        description = "Toy City Low Detail Building A",
        mesh = "toycity_low_detail_building_a.obj",
        box = {-0.250, -0.500, -0.250, 0.250, 1.500, 0.250},
    },
    {
        name = "low_detail_building_b",
        description = "Toy City Low Detail Building B",
        mesh = "toycity_low_detail_building_b.obj",
        box = {-0.250, -0.500, -0.250, 0.250, 1.725, 0.250},
    },
    {
        name = "low_detail_building_c",
        description = "Toy City Low Detail Building C",
        mesh = "toycity_low_detail_building_c.obj",
        box = {-0.250, -0.500, -0.250, 0.250, 1.750, 0.250},
    },
    {
        name = "low_detail_building_d",
        description = "Toy City Low Detail Building D",
        mesh = "toycity_low_detail_building_d.obj",
        box = {-0.250, -0.500, -0.250, 0.250, 1.250, 0.250},
    },
    {
        name = "low_detail_building_e",
        description = "Toy City Low Detail Building E",
        mesh = "toycity_low_detail_building_e.obj",
        box = {-0.250, -0.500, -0.250, 0.250, 1.300, 0.250},
    },
    {
        name = "low_detail_building_f",
        description = "Toy City Low Detail Building F",
        mesh = "toycity_low_detail_building_f.obj",
        box = {-0.250, -0.500, -0.250, 0.250, 1.500, 0.250},
    },
    {
        name = "low_detail_building_g",
        description = "Toy City Low Detail Building G",
        mesh = "toycity_low_detail_building_g.obj",
        box = {-0.250, -0.500, -0.250, 0.250, 1.500, 0.250},
    },
    {
        name = "low_detail_building_h",
        description = "Toy City Low Detail Building H",
        mesh = "toycity_low_detail_building_h.obj",
        box = {-0.250, -0.500, -0.250, 0.250, 1.600, 0.250},
    },
    {
        name = "low_detail_building_i",
        description = "Toy City Low Detail Building I",
        mesh = "toycity_low_detail_building_i.obj",
        box = {-0.250, -0.500, -0.250, 0.250, 1.275, 0.250},
    },
    {
        name = "low_detail_building_j",
        description = "Toy City Low Detail Building J",
        mesh = "toycity_low_detail_building_j.obj",
        box = {-0.250, -0.500, -0.250, 0.250, 1.250, 0.250},
    },
    {
        name = "low_detail_building_k",
        description = "Toy City Low Detail Building K",
        mesh = "toycity_low_detail_building_k.obj",
        box = {-0.250, -0.500, -0.250, 0.250, 1.050, 0.250},
    },
    {
        name = "low_detail_building_l",
        description = "Toy City Low Detail Building L",
        mesh = "toycity_low_detail_building_l.obj",
        box = {-0.250, -0.500, -0.250, 0.250, 1.350, 0.250},
    },
    {
        name = "low_detail_building_m",
        description = "Toy City Low Detail Building M",
        mesh = "toycity_low_detail_building_m.obj",
        box = {-0.250, -0.500, -0.250, 0.250, 1.475, 0.250},
    },
    {
        name = "low_detail_building_n",
        description = "Toy City Low Detail Building N",
        mesh = "toycity_low_detail_building_n.obj",
        box = {-0.250, -0.500, -0.250, 0.250, 0.200, 0.250},
    },
    {
        name = "low_detail_building_wide_a",
        description = "Toy City Low Detail Building Wide A",
        mesh = "toycity_low_detail_building_wide_a.obj",
        box = {-0.500, -0.500, -0.250, 0.500, 0.600, 0.250},
    },
    {
        name = "low_detail_building_wide_b",
        description = "Toy City Low Detail Building Wide B",
        mesh = "toycity_low_detail_building_wide_b.obj",
        box = {-0.500, -0.500, -0.250, 0.500, 0.650, 0.250},
    },
}

for _, m in ipairs(models) do
    minetest.register_node(modname .. ":" .. m.name, {
        description = m.description,
        drawtype = "mesh",
        mesh = m.mesh,
        tiles = { "toycity_colormap.png" },
        paramtype = "light",
        paramtype2 = "facedir",
        groups = {
            falling_node = 1,
            snappy = 3,
            oddly_breakable_by_hand = 3,
            decorative = 1,
            toycity = 1,
        },
        selection_box = {
            type = "fixed",
            fixed = m.box,
        },
        collision_box = {
            type = "fixed",
            fixed = m.box,
        },
        sounds = sounds,
    })
end

minetest.log("action", "[toycity] Loaded " .. #models .. " decorative city models.")
