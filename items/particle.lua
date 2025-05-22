local particle = {
    object_type = "ConsumableType",
	key = "Particle",
	primary_colour = HEX("bdb56f"),
	secondary_colour = HEX("bdba9f"),
	collection_rows = { 4, 3 },
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
	pos = { x = 0, y = 3 },
	config = { extra = 2, choose = 1 },
	cost = 4,
	order = 810,
	weight = 0.3,
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

local atomic2 = {
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
	key = "particle_normal_2",
	kind = "Particle",
	atlas = "pack",
	pos = { x = 1, y = 3 },
	config = { extra = 2, choose = 1 },
	cost = 4,
	order = 811,
	weight = 0.3,
	create_card = function(self, card)
		return create_card("Particle", G.pack_cards, nil, nil, true, true, nil, "cry_atomic_2")
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

local atomicJ = {
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
	key = "particle_jumbo_1",
	kind = "Particle",
	atlas = "pack",
	pos = { x = 2, y = 3 },
	config = { extra = 4, choose = 1 },
	cost = 4,
	order = 812,
	weight = 0.3,
	create_card = function(self, card)
		return create_card("Particle", G.pack_cards, nil, nil, true, true, nil, "cry_atomic_2")
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

local atomicM = {
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
	key = "particle_mega_1",
	kind = "Particle",
	atlas = "pack",
	pos = { x = 3, y = 3 },
	config = { extra = 4, choose = 2 },
	cost = 4,
	order = 813,
	weight = 0.07,
	create_card = function(self, card)
		return create_card("Particle", G.pack_cards, nil, nil, true, true, nil, "cry_atomic_2")
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
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra } }
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

		for k, v in pairs(G.GAME.hands) do
			v.l_mult = lenient_bignum(to_big(v.l_mult)*to_big(card.ability.extra))
		end

		delay(0.4)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 },
			{ handname = localize("cry_upg_power"), chips = "+...", mult = "+...", level = "" }
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
		delay(1.3)
		update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, {mult = "+...",})
		delay(1.3)

		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 },
			{ mult = 0, chips = 0, handname = "", level = "" }
		)
	end,
	bulk_use = function(self, card, area, copier, number)
		local used_consumable = copier or card

		for k, v in pairs(G.GAME.hands) do
			v.l_mult = lenient_bignum(to_big(v.l_mult)*to_big(card.ability.extra)^to_big(number))
		end

		delay(0.4)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 },
			{ handname = localize("cry_upg_power"), chips = "+...", mult = "+...", level = "" }
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
		
		update_hand_text({ delay = 0 }, { mult = "X"..number_format(to_big(card.ability.extra)^to_big(number)), StatusText = true })
		delay(1.3)
		update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, {mult = "+...",})
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
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra } }
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

		for k, v in pairs(G.GAME.hands) do
			v.l_chips = lenient_bignum(to_big(v.l_chips)*to_big(card.ability.extra))
		end

		delay(0.4)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 },
			{ handname = localize("cry_upg_power"), chips = "+...", mult = "+...", level = "" }
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
		delay(1.3)
		update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, {chips = "+...",})
		delay(1.3)

		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 },
			{ mult = 0, chips = 0, handname = "", level = "" }
		)

	end,
	bulk_use = function(self, card, area, copier, number)
		local used_consumable = copier or card

		for k, v in pairs(G.GAME.hands) do
			v.l_chips = lenient_bignum(to_big(v.l_chips)*to_big(card.ability.extra)^to_big(number))
		end

		delay(0.4)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 },
			{ handname = localize("cry_upg_power"), chips = "+...", mult = "+...", level = "" }
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
		delay(1.3)
		update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, {chips = "+...",})
		delay(1.3)

		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 },
			{ mult = 0, chips = 0, handname = "", level = "" }
		)
	end,
}

local positron = {
	cry_credits = {
		idea = {
			"HexaCryonic",
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
	name = "cry-Positron",
	key = "positron",
	pos = { x = 3, y = 0 },
	config = { 
		most_power = 0.8, 
		other_power = 1.4, 
	},
	loc_vars = function(self, info_queue, card)
		return { 
			vars = { 
				card.ability.most_power,
				card.ability.other_power,
			} 
		}
	end,
	cost = 4,
	atlas = "atlasparticle",
	order = 904,
	can_use = function(self, card)
		return true
	end,
	can_bulk_use = true,
	use = function(self, card, area, copier)
		local used_consumable = copier or card

		local _hand, _tally = nil, -1
		for k, v in ipairs(G.handlist) do
			if G.GAME.hands[v].visible and G.GAME.hands[v].played > _tally then
				_hand = v
				_tally = G.GAME.hands[v].played
			end
		end

		delay(0.4)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 }, {
				handname = localize(_hand, "poker_hands").." "..localize("cry_upg_power"),
				chips = "+"..number_format(Cryptid.get_l_chips(_hand)),
				mult = "+"..number_format(Cryptid.get_l_mult(_hand)),
				level = "",
			}
		)
		delay(1.0)
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				play_sound("multhit2")
				play_sound("xchips")
				used_consumable:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))
		update_hand_text({ delay = 0 }, { mult = "X"..number_format(card.ability.most_power), chips = "X"..number_format(card.ability.most_power), StatusText = true })
		G.GAME.hands[_hand].l_mult = lenient_bignum(to_big(G.GAME.hands[_hand].l_mult)*card.ability.most_power)
		G.GAME.hands[_hand].l_chips = lenient_bignum(to_big(G.GAME.hands[_hand].l_chips)*card.ability.most_power)
		delay(1.3)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 }, {
				handname = localize(_hand, "poker_hands").." "..localize("cry_upg_power"),
				chips = "+"..number_format(Cryptid.get_l_chips(_hand)),
				mult = "+"..number_format(Cryptid.get_l_mult(_hand)),
				level = "",
			}
		)
		delay(1.3)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 }, {
				handname = localize("cry_other_hands").." "..localize("cry_upg_power"),
				chips = "+...",
				mult = "+...",
				level = "",
			}
		)
		delay(1.0)
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				play_sound("multhit2")
				play_sound("xchips")
				used_consumable:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))
		update_hand_text({ delay = 0 }, { mult = "X"..number_format(card.ability.other_power), chips = "X"..number_format(card.ability.other_power), StatusText = true })
		for k, v in pairs(G.GAME.hands) do
			if k ~= _hand then
				v.l_mult = lenient_bignum(to_big(v.l_mult)*card.ability.other_power)
				v.l_chips = lenient_bignum(to_big(v.l_chips)*card.ability.other_power)
			end
		end
		delay(1.3)
		update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, {chips = "+...", mult = "+...",})
		delay(1.3)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 },
			{ mult = 0, chips = 0, handname = "", level = "" }
		)
	end,
	bulk_use = function(self, card, area, copier, number)
		local used_consumable = copier or card

		local _hand, _tally = nil, -1
		for k, v in ipairs(G.handlist) do
			if G.GAME.hands[v].visible and G.GAME.hands[v].played > _tally then
				_hand = v
				_tally = G.GAME.hands[v].played
			end
		end

		delay(0.4)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 }, {
				handname = localize(_hand, "poker_hands").." "..localize("cry_upg_power"),
				chips = "+"..number_format(Cryptid.get_l_chips(_hand)),
				mult = "+"..number_format(Cryptid.get_l_mult(_hand)),
				level = "",
			}
		)
		delay(1.0)
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				play_sound("multhit2")
				play_sound("xchips")
				used_consumable:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))
		update_hand_text({ delay = 0 }, { mult = "X"..number_format(to_big(card.ability.most_power)^number), chips = "X"..number_format(to_big(card.ability.most_power)^number), StatusText = true })
		G.GAME.hands[_hand].l_mult = lenient_bignum(to_big(G.GAME.hands[_hand].l_mult)*to_big(card.ability.most_power)^number)
		G.GAME.hands[_hand].l_chips = lenient_bignum(to_big(G.GAME.hands[_hand].l_chips)*to_big(card.ability.most_power)^number)
		delay(1.3)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 }, {
				handname = localize(_hand, "poker_hands").." "..localize("cry_upg_power"),
				chips = "+"..number_format(Cryptid.get_l_chips(_hand)),
				mult = "+"..number_format(Cryptid.get_l_mult(_hand)),
				level = "",
			}
		)
		delay(1.3)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 }, {
				handname = localize("cry_other_hands").." "..localize("cry_upg_power"),
				chips = "+...",
				mult = "+...",
				level = "",
			}
		)
		delay(1.0)
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				play_sound("multhit2")
				play_sound("xchips")
				used_consumable:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))
		update_hand_text({ delay = 0 }, { mult = "X"..number_format(to_big(card.ability.other_power)^number), chips = "X"..number_format(to_big(card.ability.other_power)^number), StatusText = true })
		for k, v in pairs(G.GAME.hands) do
			if k ~= _hand then
				v.l_mult = lenient_bignum(to_big(v.l_mult)*to_big(card.ability.other_power)^number)
				v.l_chips = lenient_bignum(to_big(v.l_chips)*to_big(card.ability.other_power)^number)
			end
		end
		delay(1.3)
		update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, {chips = "+...", mult = "+...",})
		delay(1.3)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 },
			{ mult = 0, chips = 0, handname = "", level = "" }
		)
	end,
}

local photon = {
	cry_credits = {
		idea = {
			"HexaCryonic",
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
	name = "cry-Photon",
	key = "photon",
	pos = { x = 2, y = 1 },
	config = { power = 2, rounds = 3 },
	loc_vars = function(self, info_queue, card)
		return { 
			vars = {
				 number_format(card.ability.power),
				 number_format(card.ability.rounds),
				 number_format(G.GAME.photon_power),
				 number_format(G.GAME.photon_rounds),
				} 
		}
	end,
	cost = 4,
	atlas = "atlasparticle",
	order = 907,
	can_use = function(self, card)
		return true
	end,
	can_bulk_use = true,
	use = function(self, card, area, copier)
		local used_consumable = copier or card

		G.GAME.photon_rounds = math.max(G.GAME.photon_rounds, lenient_bignum(card.ability.rounds))
		G.GAME.photon_power = G.GAME.photon_power or 1

		delay(0.4)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 },
			{ handname = localize("cry_photon_buff"), chips = "X"..number_format(G.GAME.photon_power), mult = "X"..number_format(G.GAME.photon_power), level = "" }
		)
		delay(1.0)
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				play_sound("multhit2")
				play_sound("xchips")
				used_consumable:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))

		update_hand_text({ delay = 0 }, { chips = " X"..number_format(card.ability.power), mult = "X"..number_format(card.ability.power).." ", StatusText = true })
		G.GAME.photon_power = lenient_bignum(G.GAME.photon_power*to_big(card.ability.power))
		delay(1.3)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 },
			{ chips = "X"..number_format(G.GAME.photon_power), mult = "X"..number_format(G.GAME.photon_power), level = "" }
		)
		delay(1.3)

		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 },
			{ mult = 0, chips = 0, handname = "", level = "" }
		)

	end,
	bulk_use = function(self, card, area, copier, number)
		local used_consumable = copier or card

		G.GAME.photon_rounds = math.max(G.GAME.photon_rounds, lenient_bignum(card.ability.rounds))
		G.GAME.photon_power = G.GAME.photon_power or 1

		delay(0.4)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 },
			{ handname = localize("cry_photon_buff"), chips = "X"..number_format(G.GAME.photon_power), mult = "X"..number_format(G.GAME.photon_power), level = "" }
		)
		delay(1.0)
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				play_sound("multhit2")
				play_sound("xchips")
				used_consumable:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))

		update_hand_text({ delay = 0 }, { chips = " X"..number_format(to_big(card.ability.power)^number), mult = "X"..number_format(to_big(card.ability.power)^number).." ", StatusText = true })
		G.GAME.photon_power = lenient_bignum(G.GAME.photon_power*to_big(card.ability.power)^number)
		delay(1.3)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 },
			{ chips = "X"..number_format(G.GAME.photon_power), mult = "X"..number_format(G.GAME.photon_power), level = "" }
		)
		delay(1.3)
		
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 },
			{ mult = 0, chips = 0, handname = "", level = "" }
		)
	end,
}

local higgsboson = {
	cry_credits = {
		idea = {
			"HexaCryonic",
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
	name = "cry-HiggsBoson",
	key = "higgsboson",
	pos = { x = 0, y = 2 },
	config = {},
	cost = 4,
	atlas = "atlasparticle",
	order = 909,
	can_use = function(self, card)
		return true
	end,
	can_bulk_use = true,
	use = function(self, card, area, copier)
		local used_consumable = copier or card
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.4,
			func = function() --"borrowed" from Wheel Of Fortune
				attention_text({
					text = localize("k_nope_ex"),
					scale = 1.3,
					hold = 1.4,
					major = used_consumable,
					backdrop_colour = G.C.SECONDARY_SET.Particle,
					align = (
						G.STATE == G.STATES.TAROT_PACK
						or G.STATE == G.STATES.SPECTRAL_PACK
						or G.STATE == G.STATES.SMODS_BOOSTER_OPENED
					)
							and "tm"
						or "cm",
					offset = {
						x = 0,
						y = (
							G.STATE == G.STATES.TAROT_PACK
							or G.STATE == G.STATES.SPECTRAL_PACK
							or G.STATE == G.STATES.SMODS_BOOSTER_OPENED
						)
								and -0.2
							or 0,
					},
					silent = true,
				})
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0,
					func = function()
						play_sound("multhit1", 1)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0.5,
					func = function()
						play_sound("multhit1", 1)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0.5,
					func = function()
						play_sound("multhit1", 2)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						play_sound("multhit1", 1.5)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1.5,
					func = function()
						play_sound("multhit1", 1.414)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						play_sound("multhit1", 1.333)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						play_sound("multhit1", 1.2)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						play_sound("multhit1", 1)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0.5,
					func = function()
						play_sound("multhit1", 1.2)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0.5,
					func = function()
						play_sound("multhit1", 1.333)
						return true
					end,
				}))
				return true
			end,
		}))
	end,
	bulk_use = function(self, card, area, copier, number)
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.4,
			func = function() --"borrowed" from Wheel Of Fortune
				attention_text({
					text = localize("k_nope_ex"),
					scale = 1.3,
					hold = 1.4,
					major = used_consumable,
					backdrop_colour = G.C.SECONDARY_SET.Particle,
					align = (
						G.STATE == G.STATES.TAROT_PACK
						or G.STATE == G.STATES.SPECTRAL_PACK
						or G.STATE == G.STATES.SMODS_BOOSTER_OPENED
					)
							and "tm"
						or "cm",
					offset = {
						x = 0,
						y = (
							G.STATE == G.STATES.TAROT_PACK
							or G.STATE == G.STATES.SPECTRAL_PACK
							or G.STATE == G.STATES.SMODS_BOOSTER_OPENED
						)
								and -0.2
							or 0,
					},
					silent = true,
				})
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0,
					func = function()
						play_sound("multhit1", 1)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0.5,
					func = function()
						play_sound("multhit1", 1)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0.5,
					func = function()
						play_sound("multhit1", 2)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						play_sound("multhit1", 1.5)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1.5,
					func = function()
						play_sound("multhit1", 1.414)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						play_sound("multhit1", 1.333)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						play_sound("multhit1", 1.2)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						play_sound("multhit1", 1)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0.5,
					func = function()
						play_sound("multhit1", 1.2)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0.5,
					func = function()
						play_sound("multhit1", 1.333)
						return true
					end,
				}))
				return true
			end,
		}))
	end,
}

local tachyon = {
	cry_credits = {
		idea = {
			"HexaCryonic",
		},
		art = {
			"ruby",
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
	set = "Spectral",
	name = "cry-Tachyon",
	key = "tachyon",
	pos = { x = 1, y = 3 },
	config = { extra = 1.5 },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra } }
	end,
	cost = 4,
	atlas = "atlasparticle",
	order = 200001,
	hidden = true,
	soul_set = "Particle",
	can_use = function(self, card)
		return true
	end,
	can_bulk_use = true,
	use = function(self, card, area, copier)
		local used_consumable = copier or card

		for k, v in pairs(G.GAME.hands) do
			v.l_mult = lenient_bignum(to_big(v.l_mult)^to_big(card.ability.extra))
			v.l_chips = lenient_bignum(to_big(v.l_chips)^to_big(card.ability.extra))
		end

		delay(0.4)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 },
			{ handname = localize("cry_upg_power"), chips = "+...", mult = "+...", level = "" }
		)
		delay(1.0)
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				play_sound("talisman_emult")
				play_sound("talisman_echip")
				used_consumable:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))

		update_hand_text({ delay = 0 }, { chips = "^"..number_format(card.ability.extra), mult = "^"..number_format(card.ability.extra), StatusText = true })
		delay(1.3)
		update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, {chips = "+...", mult = "+...",})
		delay(1.3)

		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 },
			{ mult = 0, chips = 0, handname = "", level = "" }
		)

	end,
	bulk_use = function(self, card, area, copier, number)
		local used_consumable = copier or card

		for k, v in pairs(G.GAME.hands) do
			v.l_mult = lenient_bignum(to_big(v.l_mult)^(to_big(card.ability.extra)^number))
			v.l_chips = lenient_bignum(to_big(v.l_chips)^(to_big(card.ability.extra)^number))
		end

		delay(0.4)
		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 },
			{ handname = localize("cry_upg_power"), chips = "+...", mult = "+...", level = "" }
		)
		delay(1.0)
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				play_sound("emult")
				play_sound("echip")
				used_consumable:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))

		update_hand_text({ delay = 0 }, { chips = "^"..number_format(to_big(card.ability.extra)^number), "^"..number_format(to_big(card.ability.extra)^number), StatusText = true })
		delay(1.3)
		update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, {chips = "+...", mult = "+...",})
		delay(1.3)

		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 },
			{ mult = 0, chips = 0, handname = "", level = "" }
		)
	end,
}

-- Collider (Spectral)
-- Gives a selected playing card White Seal
-- literally just stole this from source
local collider = {
	cry_credits = {
		idea = {
			"HexaCryonic",
		},
		art = {
			"HexaCryonic",
		},
		code = {
			"crazybot",
		},
	},
	dependencies = {
		items = {
			"set_cry_particle",
			"cry_white",
		},
	},
	object_type = "Consumable",
	set = "Spectral",
	name = "cry-Collider",
	order = 605,
	key = "collider",
	config = {
		-- This will add a tooltip.
		mod_conv = "cry_white_seal",
		-- Tooltip args
		max_highlighted = 1,
	},
	loc_vars = function(self, info_queue, center)
		-- Handle creating a tooltip with set args.
		info_queue[#info_queue + 1] = { set = "Other", key = "cry_white_seal" }
		return { vars = { center.ability.max_highlighted } }
	end,
	cost = 4,
	atlas = "placeholders",
	pos = { x = 2, y = 2 },
	use = function(self, card, area, copier) --Good enough
		for i = 1, #G.hand.highlighted do
			local highlighted = G.hand.highlighted[i]
			G.E_MANAGER:add_event(Event({
				func = function()
					play_sound("tarot1")
					highlighted:juice_up(0.3, 0.5)
					return true
				end,
			}))
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.1,
				func = function()
					if highlighted then
						highlighted:set_seal("cry_white")
					end
					return true
				end,
			}))
			delay(0.5)
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					G.hand:unhighlight_all()
					return true
				end,
			}))
		end
	end,
}

-- White Seal
-- Creates a Particle card when scored in the center of a hand with at least 3 cards
local white_seal = {
	cry_credits = {
		idea = {
			"HexaCryonic",
		},
		art = {
			"HexaCryonic",
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
	object_type = "Seal",
	name = "cry-White-Seal",
	key = "white",
	badge_colour = HEX("bdb56f"), --same as particle cards
	atlas = "cry_misc",
	pos = { x = 1, y = 3 },
	order = 606,
	calculate = function(self, card, context)
		if context.cardarea == G.play and context.main_scoring then
			if (#context.full_hand > 1) and (#context.full_hand % 2 == 1) and context.full_hand[math.ceil(#context.full_hand/2)] == card then
				G.E_MANAGER:add_event(Event({
					func = function()
						if G.consumeables.config.card_limit > #G.consumeables.cards then
							local c = create_card("Particle", G.consumeables, nil, nil, nil, nil, nil, "cry_white_seal")
							c:add_to_deck()
							G.consumeables:emplace(c)
							card:juice_up()
						end
						return true
					end,
				}))
			end
		end
	end,
}

local particle_cards = {
	particle,
	atomic1,
	atomic2,
	atomicJ,
	atomicM,
	proton,
	neutron,
	positron,
	photon,
	higgsboson,
	tachyon,
	collider,
	white_seal,
}

return {
	name = "Particle Cards",
	init = function() end,
	items = particle_cards,
}