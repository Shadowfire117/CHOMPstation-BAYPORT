
// Taj clothing
/datum/gear/eyes/medical/tajblind
	display_name = "medical veil (Tajara)"
	path = /obj/item/clothing/glasses/hud/health/tajblind
	whitelisted = list(SPECIES_TAJARA)
	sort_category = "Xenowear"

/datum/gear/eyes/meson/tajblind
	display_name = "industrial veil (Tajara)"
	path = /obj/item/clothing/glasses/meson/prescription/tajblind
	whitelisted = list(SPECIES_TAJARA)
	sort_category = "Xenowear"

/datum/gear/eyes/security/tajblind
	display_name = "sleek veil (Tajara)"
	path = /obj/item/clothing/glasses/sunglasses/sechud/tajblind
	whitelisted = list(SPECIES_TAJARA)
	sort_category = "Xenowear"

/datum/gear/eyes/visors
	display_name = "visor selection (Tajara)"
	path = /obj/item/clothing/glasses/tajvisor
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_TAJARA)

/datum/gear/eyes/visors/New()
	..()
	var/visors = list()
	visors["visor type-A (Tajara)"] = /obj/item/clothing/glasses/tajvisor/a
	visors["visor type-B (Tajara)"] = /obj/item/clothing/glasses/tajvisor/b
	visors["visor type-C (Tajara)"] = /obj/item/clothing/glasses/tajvisor/c
	visors["visor type-D (Tajara)"] = /obj/item/clothing/glasses/tajvisor/d
	visors["visor type-E (Tajara)"] = /obj/item/clothing/glasses/tajvisor/e
	visors["visor type-F (Tajara)"] = /obj/item/clothing/glasses/tajvisor/f
	visors["visor type-G (Tajara)"] = /obj/item/clothing/glasses/tajvisor/g
	gear_tweaks += new/datum/gear_tweak/path(visors)

/datum/gear/eyes/medical/tajvisor
	display_name = "MEDICAL visor (Tajara)"
	path = /obj/item/clothing/glasses/hud/health/tajvisor
	whitelisted = list(SPECIES_TAJARA)
	sort_category = "Xenowear"

/datum/gear/eyes/security/tajvisor
	display_name = "SECURITY visor (Tajara)"
	path = /obj/item/clothing/glasses/sunglasses/sechud/tajvisor
	whitelisted = list(SPECIES_TAJARA)
	sort_category = "Xenowear"

/datum/gear/eyes/meson/tajvisor
	display_name = "ENGINEERING visor (Tajara)"
	path = /obj/item/clothing/glasses/meson/prescription/tajvisor
	whitelisted = list(SPECIES_TAJARA)
	sort_category = "Xenowear"

/datum/gear/shoes/caligae
	display_name = "caligae (Tajara)"
	path = /obj/item/clothing/shoes/sandal/tajaran/caligae
	whitelisted = list(SPECIES_TAJARA)
	sort_category = "Xenowear"


// From old Glasses.dm


/*---Tajaran-specific Eyewear---*/

/obj/item/clothing/glasses/tajblind
	name = "embroidered veil"
	desc = "An Ahdominian made veil that allows the user to see while obscuring their eyes."
	icon_state = "tajblind"
	item_state = "tajblind"
	prescription = 5
	body_parts_covered = EYES

/obj/item/clothing/glasses/hud/health/tajblind
	name = "lightweight veil"
	desc = "An Ahdominian made veil that allows the user to see while obscuring their eyes. This one has an installed medical HUD."
	icon_state = "tajblind_med"
	item_state = "tajblind_med"
	body_parts_covered = EYES

/obj/item/clothing/glasses/sunglasses/sechud/tajblind
	name = "sleek veil"
	desc = "An Ahdominian made veil that allows the user to see while obscuring their eyes. This one has an in-built security HUD."
	icon_state = "tajblind_sec"
	item_state = "tajblind_sec"
	prescription = 5
	body_parts_covered = EYES

/obj/item/clothing/glasses/meson/prescription/tajblind
	name = "industrial veil"
	desc = "An Ahdominian made veil that allows the user to see while obscuring their eyes. This one has installed mesons."
	icon_state = "tajblind_meson"
	item_state = "tajblind_meson"
	off_state = "tajblind_meson"
	body_parts_covered = EYES

/obj/item/clothing/glasses/hud/health/tajvisor
	name = "lightweight visor"
	desc = "A modern Ahdominian made visor that allows the user to see while obscuring their eyes. This one has an installed medical HUD."
	icon_state = "tajvisor_med"
	item_state = "tajvisor_med"
	body_parts_covered = EYES

/obj/item/clothing/glasses/sunglasses/sechud/tajvisor
	name = "sleek visor"
	desc = "A modern Ahdominian made visor that allows the user to see while obscuring their eyes. This one has an in-built security HUD."
	icon_state = "tajvisor_sec"
	item_state = "tajvisor_sec"
	prescription = 5
	body_parts_covered = EYES

/obj/item/clothing/glasses/meson/prescription/tajvisor
	name = "industrial visor"
	desc = "A modern Ahdominian made visor that allows the user to see while obscuring their eyes. This one has installed mesons."
	icon_state = "tajvisor_mes"
	item_state = "tajvisor_mes"
	off_state = "tajvisor_mes"
	body_parts_covered = EYES

/obj/item/clothing/glasses/tajvisor
	name = "tajaran master visor object, not used"
	desc = "An Ahdominian made eyeguard."
	body_parts_covered = EYES

/obj/item/clothing/glasses/tajvisor/a
	name = "visor"
	icon_state = "tajvisor_a"
	item_state = "tajvisor_a"

/obj/item/clothing/glasses/tajvisor/b
	name = "visor"
	icon_state = "tajvisor_b"
	item_state = "tajvisor_b"

/obj/item/clothing/glasses/tajvisor/c
	name = "visor"
	icon_state = "tajvisor_c"
	item_state = "tajvisor_c"

/obj/item/clothing/glasses/tajvisor/d
	name = "visor"
	icon_state = "tajvisor_d"
	item_state = "tajvisor_d"

/obj/item/clothing/glasses/tajvisor/d
	name = "visor"
	icon_state = "tajvisor_d"
	item_state = "tajvisor_d"

/obj/item/clothing/glasses/tajvisor/e
	name = "visor"
	icon_state = "tajvisor_e"
	item_state = "tajvisor_e"

/obj/item/clothing/glasses/tajvisor/f
	name = "visor"
	icon_state = "tajvisor_f"
	item_state = "tajvisor_f"

/obj/item/clothing/glasses/tajvisor/g
	name = "visor"
	icon_state = "tajvisor_g"
	item_state = "tajvisor_g"


/datum/gear/shoes/caligae
	display_name = "caligae (Tajara)"
	path = /obj/item/clothing/shoes/sandal/tajaran/caligae
	whitelisted = list(SPECIES_TAJARA)
	sort_category = "Xenowear"

/datum/gear/shoes/caligae/New()
	..()
	var/caligae = list()
	caligae["no sock"] = /obj/item/clothing/shoes/sandal/tajaran/caligae
	caligae["black sock"] = /obj/item/clothing/shoes/sandal/tajaran/caligae/black
	caligae["grey sock"] = /obj/item/clothing/shoes/sandal/tajaran/caligae/grey
	caligae["white sock"] = /obj/item/clothing/shoes/sandal/tajaran/caligae/white
	gear_tweaks += new/datum/gear_tweak/path(caligae)

//Taj clothing.

/obj/item/clothing/suit/tajaran/furs
	name = "heavy furs"
	desc = "A traditional Zhan-Khazan garment."
	icon_state = "zhan_furs"
	item_state = "zhan_furs"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS

/obj/item/clothing/head/tajaran/scarf
	name = "headscarf"
	desc = "A scarf of coarse fabric. Seems to have ear-holes."
	icon_state = "zhan_scarf"
	body_parts_covered = HEAD|FACE

/obj/item/clothing/shoes/sandal/tajaran/caligae
	name = "caligae"
	desc = "The standard Tajaran footwear loosly resembles the Roman Caligae. Made of leather and rubber, their unique design allows for improved traction and protection. They don't look like they would fit on anyone but a Tajara."
//	description_fluff = "These traditional Tajaran footwear, also called Haskri, have remained reletivly unchanged in principal, with improved materials and construction being the only notable improvment. Originally used for harsher environment, they became widespread for their comfort and hygiene. Some of them come with covering for additional protection for more sterile environments. Made for the Tajarans digitigrade anatomy, they won't fit on any other species."
	icon_state = "caligae"
	item_state = "caligae"
	body_parts_covered = FEET|LEGS
	species_restricted = list(SPECIES_TAJARA)

/obj/item/clothing/shoes/sandal/tajaran/caligae/white
	desc = "The standard Tajaran footwear loosly resembles the Roman Caligae. Made of leather and rubber, their unique design allows for improved traction and protection. They don't look like they would fit on anyone but a Tajara. /This one has a white covering."
	icon_state = "whitecaligae"
	item_state = "whitecaligae"

/obj/item/clothing/shoes/sandal/tajaran/caligae/grey
	desc = "The standard Tajaran footwear loosly resembles the Roman Caligae. Made of leather and rubber, their unique design allows for improved traction and protection. They don't look like they would fit on anyone but a Tajara. /This one has a grey covering."
	icon_state = "greycaligae"
	item_state = "greycaligae"

/obj/item/clothing/shoes/sandal/tajaran/caligae/black
	desc = "The standard Tajaran footwear loosly resembles the Roman Caligae. Made of leather and rubber, their unique design allows for improved traction and protection. They don't look like they would fit on anyone but a Tajara. /This one has a black covering."
	icon_state = "blackcaligae"
	item_state = "blackcaligae"