// Different types of fish! They are all subtypes of this tho
/mob/living/simple_animal/fish
	name = "fish"
	desc = "Its a fishy.  No touchy fishy."
	icon = 'icons/mob/fish.dmi'
	meat_type = /obj/item/weapon/reagent_containers/food/snacks/meat
	emote_see = list("glubs", "blubs", "bloops")
	speed = 4
	turns_per_move = 5

	// They only really care if there's water around them or not.
	max_gas = list()
	min_gas = list()
	minbodytemp = 0


/mob/living/simple_animal/fish/handle_atmos(var/atmos_suitable = 1)
	. = ..(atmos_suitable = (loc && loc.is_flooded(1)))

/mob/living/simple_animal/fish/bass
	name = "bass"
	icon_state = "bass-swim"
	icon_living = "bass-swim"
	icon_dead = "bass-dead"

/mob/living/simple_animal/fish/trout
	name = "trout"
	icon_state = "trout-swim"
	icon_living = "trout-swim"
	icon_dead = "trout-dead"

/mob/living/simple_animal/fish/salmon
	name = "salmon"
	icon_state = "salmon-swim"
	icon_living = "salmon-swim"
	icon_dead = "salmon-dead"

/mob/living/simple_animal/fish/perch
	name = "perch"
	icon_state = "perch-swim"
	icon_living = "perch-swim"
	icon_dead = "perch-dead"

/mob/living/simple_animal/fish/pike
	name = "pike"
	icon_state = "pike-swim"
	icon_living = "pike-swim"
	icon_dead = "pike-dead"

/mob/living/simple_animal/fish/koi
	name = "koi"
	icon_state = "koi-swim"
	icon_living = "koi-swim"
	icon_dead = "koi-dead"