local particle = {
    object_type = "ConsumableType",
	key = "Particle",
	primary_colour = HEX("bdb56f"),
	secondary_colour = HEX("bdba9f"),
	collection_rows = { 4, 4 },
	shop_rate = 0.0,
	loc_txt = {},
	default = "q_cry_proton",
	can_stack = true,
	can_divide = true,
}

local particle_digital_hallucinations_compat = {
	colour = HEX("bdb56f"),
	loc_key = "cry_plus_particle",
	create = function()
		local ccard = create_card("Particle", G.consumeables, nil, nil, nil, nil, nil, "diha")
		ccard:set_edition({ negative = true }, true)
		ccard:add_to_deck()
		G.consumeables:emplace(ccard)
	end,
}

local atomic1 = {
	cry_credits = {
		idea = {
			"",
		},
		art = {
			"",
		},
		code = {
			"Math",
		},
	},
	dependencies = {
		items = {
			"set_cry_code",
		},
	},
	object_type = "Booster",
	key = "particle_normal_1",
	kind = "Particle",
	atlas = "pack",
	pos = { x = 0, y = 0 },
	config = { extra = 2, choose = 1 },
	cost = 4,
	order = 805,
	weight = 100,
	create_card = function(self, card)
		return create_card("Particle", G.pack_cards, nil, nil, true, true, nil, "cry_atomic_1")
	end,
	ease_background_colour = function(self)
		ease_colour(G.C.DYN_UI.MAIN, G.C.SET.Particle)
		ease_background_colour({ new_colour = G.C.SET.Particle, special_colour = G.C.BLACK, contrast = 2 })
	end,
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card and card.ability.choose or self.config.choose,
				card and card.ability.extra or self.config.extra,
			},
		}
	end,
	group_key = "k_cry_atomic_pack",
	cry_digital_hallucinations = particle_digital_hallucinations_compat,
}

local proton = {
	cry_credits = {
		idea = {
			"playerrWon & HexaCryonic",
		},
		art = {
			"",
		},
		code = {
			"crazybot",
		},
	},
	dependencies = {
		items = {
			"set_cry_particle",
		},
	},
	object_type = "Consumable",
	set = "Particle",
	name = "cry-Proton",
	key = "proton",
	atlas = "atlasnotjokers",
	order = 426,
	pos = { x = 5, y = 3 },
	cost = 4,
	can_use = function(self, card)
		return true
	end,
	can_bulk_use = true,
	use = function(self, card, area, copier)
	end,
	bulk_use = function(self, card, area, copier, number)
	end,
}

local particle_cards = {
	particle,
	atomic1,
	proton,
}

return {
	name = "Particle Cards",
	init = function() end,
	items = particle_cards,
}