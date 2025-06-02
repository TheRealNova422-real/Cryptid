local particle = {
    object_type = "ConsumableType",
	key = "Particle",
	primary_colour = HEX("adadad"),
	secondary_colour = HEX("8d8d8d"),
	collection_rows = { 4, 3 },
	shop_rate = 0.0,
	loc_txt = {},
	default = "c_cry_proton",
	can_stack = true,
	can_divide = true,
}

local particle_digital_hallucinations_compat = {
	colour = HEX("adadad"),
	loc_key = "cry_plus_particle",
	create = function()
		local ccard = create_card("Particle", G.consumeables, nil, nil, nil, nil, nil, "diha")
		ccard:set_edition({ negative = true }, true)
		ccard:add_to_deck()
		G.consumeables:emplace(ccard)
	end,
}

-- Atomic Pack, 1/2
local atomic1 = {
	cry_credits = {
		idea = {
			"playerrWon",
			"HexaCryonic",
		},
		art = {
			"HexaCryonic",
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

-- Atomic Pack Alt, 1/2
local atomic2 = {
	cry_credits = {
		idea = {
			"playerrWon",
			"HexaCryonic",
		},
		art = {
			"HexaCryonic",
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

-- Jumbo Atomic Pack, 1/4
local atomicJ = {
	cry_credits = {
		idea = {
			"playerrWon",
			"HexaCryonic",
		},
		art = {
			"HexaCryonic",
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

--Mega Atomic Pack, 2/4
local atomicM = {
	cry_credits = {
		idea = {
			"playerrWon",
			"HexaCryonic",
		},
		art = {
			"HexaCryonic",
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

-- Theorem Tag
-- Gives a free Atomic Pack
local theorem = {
	cry_credits = {
		idea = {
			"HexaCryonic",
		},
		art = {
			"lord-ruby",
		},
		code = {
			"Math",
		},
	},
	dependencies = {
		items = {
			"p_cry_particle_normal_1",
			"set_cry_particle",
		},
	},
	object_type = "Tag",
	atlas = "tag_cry",
	name = "cry-Theorem Tag",
	order = 609,
	pos = { x = 6, y = 3 },
	config = { type = "new_blind_choice" },
	key = "theorem",
	min_ante = 4,
	loc_vars = function(self, info_queue)
		info_queue[#info_queue + 1] = { set = "Other", key = "p_cry_particle_normal_1", specific_vars = { 1, 2 } }
		return { vars = {} }
	end,
	apply = function(self, tag, context)
		if context.type == "new_blind_choice" then
			tag:yep("+", G.C.SECONDARY_SET.Particle, function()
				local key = "p_cry_particle_normal_1"
				local card = Card(
					G.play.T.x + G.play.T.w / 2 - G.CARD_W * 1.27 / 2,
					G.play.T.y + G.play.T.h / 2 - G.CARD_H * 1.27 / 2,
					G.CARD_W * 1.27,
					G.CARD_H * 1.27,
					G.P_CARDS.empty,
					G.P_CENTERS[key],
					{ bypass_discovery_center = true, bypass_discovery_ui = true }
				)
				card.cost = 0
				card.from_tag = true
				G.FUNCS.use_card({ config = { ref_table = card } })
				if G.GAME.modifiers.cry_force_edition and not G.GAME.modifiers.cry_force_random_edition then
					card:set_edition(nil, true, true)
				elseif G.GAME.modifiers.cry_force_random_edition then
					local edition = Cryptid.poll_random_edition()
					card:set_edition(edition, true, true)
				end
				card:start_materialize()
				return true
			end)
			tag.triggered = true
			return true
		end
	end,
}

-- Proton
-- Increase upgrade power of all hands by X1.25 Mult
local proton = {
	cry_credits = {
		idea = {
			"playerrWon",
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

-- Neutron
-- Increase upgrade power of all hands by X1.1 Chips
local neutron = {
	cry_credits = {
		idea = {
			"playerrWon",
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

-- Positron
-- Most played hand's power gets X0.8 Chips and Mult, all other hands' powers get X1.4 Chips and Mult
local positron = {
	cry_credits = {
		idea = {
			"playerrWon",
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

-- Photon
-- Give X2 Chips and Mult to all hands' upgrade powers for 3 rounds
local photon = {
	cry_credits = {
		idea = {
			"playerrWon",
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
				 number_format(G.GAME.photon_power or 1),
				 number_format(G.GAME.photon_rounds or 0),
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

-- Higgs Boson
-- Says "Nope!"
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
						play_sound("tarot1", 1)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0.5,
					func = function()
						play_sound("tarot1", 1)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0.5,
					func = function()
						play_sound("tarot1", 2)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						play_sound("tarot1", 1.5)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1.5,
					func = function()
						play_sound("tarot1", 1.414)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						play_sound("tarot1", 1.333)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						play_sound("tarot1", 1.2)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						play_sound("tarot1", 1)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0.5,
					func = function()
						play_sound("tarot1", 1.2)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0.5,
					func = function()
						play_sound("tarot1", 1.333)
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
						play_sound("tarot1", 1)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0.5,
					func = function()
						play_sound("tarot1", 1)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0.5,
					func = function()
						play_sound("tarot1", 2)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						play_sound("tarot1", 1.5)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1.5,
					func = function()
						play_sound("tarot1", 1.414)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						play_sound("tarot1", 1.333)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						play_sound("tarot1", 1.2)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 1,
					func = function()
						play_sound("tarot1", 1)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0.5,
					func = function()
						play_sound("tarot1", 1.2)
						return true
					end,
				}))
				G.E_MANAGER:add_event(Event({
					trigger = "after",
					delay = 0.5,
					func = function()
						play_sound("tarot1", 1.333)
						return true
					end,
				}))
				return true
			end,
		}))
	end,
}

-- Quark
-- Increase upgrade power of all hands by X1.25 Mult
local quark = {
	cry_credits = {
		idea = {
			"playerrWon",
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
	name = "cry-Quark",
	key = "quark",
	pos = { x = 3, y = 3 },
	config = { extra = 0.1 },
	loc_vars = function(self, info_queue, card)
		return { 
			vars = {
			number_format(G.GAME.quark_power or 1.1),
			number_format(card.ability.extra),
			number_format(G.GAME.quarksusedthisrun or 0),
			}
		}
	end,
	cost = 4,
	atlas = "atlasparticle",
	order = 912,
	can_use = function(self, card)
		return true
	end,
	can_bulk_use = false,
	use = function(self, card, area, copier)
		local used_consumable = copier or card

		G.GAME.quarksusedthisrun = G.GAME.quarksusedthisrun or 0
		G.GAME.quark_power = G.GAME.quark_power or 1.1

		for k, v in pairs(G.GAME.hands) do
			v.l_mult = lenient_bignum(to_big(v.l_mult)*to_big(G.GAME.quark_power))
			v.l_chips = lenient_bignum(to_big(v.l_chips)*to_big(G.GAME.quark_power))
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
				play_sound("xchips")
				used_consumable:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))
		update_hand_text({ delay = 0 }, { mult = "X"..number_format(G.GAME.quark_power), chips = "X"..number_format(G.GAME.quark_power), StatusText = true })
		delay(1.3)
		update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, {mult = "+...", chips = "+...",})
		delay(1.3)

		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 },
			{ mult = 0, chips = 0, handname = "", level = "" }
		)

		if (G.GAME.quarksusedthisrun < 6) then
			G.GAME.quark_power = lenient_bignum(G.GAME.quark_power+card.ability.extra)
		end

		G.GAME.quarksusedthisrun = G.GAME.quarksusedthisrun + 1
		
	end,
	bulk_use = function(self, card, area, copier, number)
		local used_consumable = copier or card

		G.GAME.quarksusedthisrun = G.GAME.quarksusedthisrun or 0
		G.GAME.quark_power = G.GAME.quark_power or 1.1

		for k, v in pairs(G.GAME.hands) do
			v.l_mult = lenient_bignum(to_big(v.l_mult)*to_big(G.GAME.quark_power))
			v.l_chips = lenient_bignum(to_big(v.l_chips)*to_big(G.GAME.quark_power))
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
				play_sound("xchips")
				used_consumable:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))
		update_hand_text({ delay = 0 }, { mult = "X"..number_format(G.GAME.quark_power), chips = "X"..number_format(G.GAME.quark_power), StatusText = true })
		delay(1.3)
		update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, {mult = "+...", chips = "+...",})
		delay(1.3)

		update_hand_text(
			{ sound = "button", volume = 0.7, pitch = 1.1, delay = 0 },
			{ mult = 0, chips = 0, handname = "", level = "" }
		)

		if (G.GAME.quarksusedthisrun < 6) then
			G.GAME.quark_power = lenient_bignum(G.GAME.quark_power+card.ability.extra)
		end

		G.GAME.quarksusedthisrun = G.GAME.quarksusedthisrun + number
	end,
}

-- Tachyon (Spectral)
-- Increase upgrade power of all hands by ^1.5 Chips and Mult
local tachyon = {
	cry_credits = {
		idea = {
			"playerrWon",
			"HexaCryonic",
		},
		art = {
			"lord-ruby",
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
			"lord-ruby",
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
	atlas = "atlasnotjokers",
	pos = { x = 1, y = 6 },
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
	badge_colour = HEX("adadad"), --same as particle cards
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
	theorem,
	proton,
	neutron,
	positron,
	photon,
	higgsboson,
	quark,
	tachyon,
	collider,
	white_seal,
}

return {
	name = "Particle Cards",
	init = function() end,
	items = particle_cards,
}