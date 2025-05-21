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
		delay(1.3)
		update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, {})
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
		
		update_hand_text({ delay = 0 }, { mult = "X"..number_format(to_big(card.ability.extra)^to_big(number)), StatusText = true })
		delay(1.3)
		update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, {})
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
		delay(1.3)
		update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, {})
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
		delay(1.3)
		update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, {})
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
	config = { extra = 3 },
	loc_vars = function(self, info_queue, card)
		return { 
			vars = {
				 card.ability.extra,
				 number_format(G.GAME.photon_power),
				 number_format(G.GAME.photon_rounds),
				} 
		}
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

		G.GAME.photon_rounds = lenient_bignum(card.ability.extra)
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

		update_hand_text({ delay = 0 }, { chips = "X2", mult = "X2", StatusText = true })
		G.GAME.photon_power = lenient_bignum(G.GAME.photon_power*2)
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

		G.GAME.photon_rounds = lenient_bignum(card.ability.extra)
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

		update_hand_text({ delay = 0 }, { chips = "X"..number_format(to_big(2)^number), mult = "X"..number_format(to_big(2)^number), StatusText = true })
		G.GAME.photon_power = lenient_bignum(G.GAME.photon_power*to_big(2)^number)
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
	order = 903,
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
					delay = 0.06 * G.SETTINGS.GAMESPEED,
					blockable = false,
					blocking = false,
					func = function()
						play_sound("tarot2", 0.76, 0.4)
						return true
					end,
				}))
				play_sound("tarot2", 1, 0.4)
				used_consumable:juice_up(0.3, 0.5)
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
					delay = 0.06 * G.SETTINGS.GAMESPEED,
					blockable = false,
					blocking = false,
					func = function()
						play_sound("tarot2", 0.76, 0.4)
						return true
					end,
				}))
				play_sound("tarot2", 1, 0.4)
				used_consumable:juice_up(0.3, 0.5)
				return true
			end,
		}))
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
	photon,
	higgsboson,
}

return {
	name = "Particle Cards",
	init = function() end,
	items = particle_cards,
}