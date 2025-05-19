local particle = {
    object_type = "ConsumableType",
	key = "Particle",
	primary_colour = HEX("bdb56f"),
	secondary_colour = HEX("bdba9f"),
	collection_rows = { 4, 4 },
	shop_rate = 0.0,
	loc_txt = {},
	default = "c_cry_proton",
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
			"set_cry_particle",
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
			"playerrWon/HexaCryonic",
		},
		art = {
			"ori",
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
	pos = { x = 0, y = 0 },
	config = { extra = 1.25 },
	loc_vars = function(self, info_queue, center)
		return { vars = { self.config.extra } }
	end,
	cost = 4,
	atlas = "atlasparticle",
	order = 901,
	can_use = function(self, card)
		return true
	end,
	can_bulk_use = true,
	use = function(self, card, area, copier)
		local used_consumable = copier or card
		delay(0.4)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 },
			{ handname = localize("k_all_hands"), chips = "...", mult = "...", level = "" }
		)
		delay(1.0)
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				play_sound("multhit2")
				used_consumable:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))
		update_hand_text({ delay = 0 }, { mult = "X"..number_format(card.ability.extra), StatusText = true })

		for k, v in pairs(G.GAME.hands) do
			v.l_mult = lenient_bignum(to_big(v.l_mult)*to_big(card.ability.extra))
		end
		delay(1.3)

		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 },
			{ mult = 0, chips = 0, handname = "", level = "" }
		)
	end,
	bulk_use = function(self, card, area, copier, number)
		local used_consumable = copier or card
		delay(0.4)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 },
			{ handname = localize("k_all_hands"), chips = "...", mult = "...", level = "" }
		)
		delay(1.0)
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				play_sound("xmult")
				used_consumable:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))
		
		update_hand_text({ delay = 0 }, { mult = "X"..number_format(to_big(card.ability.extra)^to_big(number)), StatusText = true })

		for k, v in pairs(G.GAME.hands) do
			v.l_mult = lenient_bignum(to_big(v.l_mult)*to_big(card.ability.extra)^to_big(number))
		end
		delay(1.3)

		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 },
			{ mult = 0, chips = 0, handname = "", level = "" }
		)
	end,
}

local neutron = {
	cry_credits = {
		idea = {
			"playerrWon/HexaCryonic",
		},
		art = {
			"ori",
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
	name = "cry-Neutron",
	key = "neutron",
	pos = { x = 1, y = 0 },
	config = { extra = 1.1 },
	loc_vars = function(self, info_queue, center)
		return { vars = { self.config.extra } }
	end,
	cost = 4,
	atlas = "atlasparticle",
	order = 902,
	can_use = function(self, card)
		return true
	end,
	can_bulk_use = true,
	use = function(self, card, area, copier)

		local used_consumable = copier or card
		delay(0.4)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 },
			{ handname = localize("k_all_hands"), chips = "...", mult = "...", level = "" }
		)
		delay(1.0)
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				play_sound("xchips")
				used_consumable:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))

		update_hand_text({ delay = 0 }, { chips = "X"..number_format(card.ability.extra), StatusText = true })

		for k, v in pairs(G.GAME.hands) do
			v.l_chips = lenient_bignum(to_big(v.l_chips)*to_big(card.ability.extra))
		end
		delay(1.3)

		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 },
			{ mult = 0, chips = 0, handname = "", level = "" }
		)

	end,
	bulk_use = function(self, card, area, copier, number)

		local used_consumable = copier or card
		delay(0.4)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 },
			{ handname = localize("k_all_hands"), chips = "...", mult = "...", level = "" }
		)
		delay(1.0)
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				play_sound("xchips")
				used_consumable:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))

		update_hand_text({ delay = 0 }, { chips = "X"..number_format(to_big(card.ability.extra)^to_big(number)), StatusText = true })
		
		for k, v in pairs(G.GAME.hands) do
			v.l_chips = lenient_bignum(to_big(v.l_chips)*to_big(card.ability.extra)^to_big(number))
		end
		delay(1.3)

		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 },
			{ mult = 0, chips = 0, handname = "", level = "" }
		)
	end,
}

local particle_cards = {
	particle,
	atomic1,
	proton,
	neutron,
}

return {
	name = "Particle Cards",
	init = function() end,
	items = particle_cards,
}