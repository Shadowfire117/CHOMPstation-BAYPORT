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

/mob/living/simple_animal/fish/koi/poisonous
	desc = "A genetic marvel, combining the docility and aesthetics of the koi with some of the resiliency and cunning of the noble space carp."
	health = 50
	maxHealth = 50

/mob/living/simple_animal/fish/koi/poisonous/New()
	..()
	create_reagents(60)
	reagents.add_reagent("toxin", 45)
	reagents.add_reagent("impedrezene", 15)

/mob/living/simple_animal/fish/koi/poisonous/Life()
	..()
	if(isbelly(loc) && prob(10))
		var/obj/belly/B = loc
		sting(B.owner)

/mob/living/simple_animal/fish/koi/poisonous/attackby(var/obj/item/O, var/mob/user)
	var/curhealth = health
	. = ..()
	if(health < curhealth)
		react_to_attack(user)

/*
/mob/living/simple_animal/fish/koi/poisonous/proc/react_to_attack(mob/attacker)
	if(isliving(attacker) && Adjacent(attacker))
		var/mob/living/M = attacker
		visible_message("<span class='warning'>\The [src][is_dead()?"'s corpse":""] flails at [M]!</span>")
		SpinAnimation(7,1)
		if(prob(75))
			if(sting(M))
				to_chat(M, "<span class='warning'>You feel a tiny prick.</span>")
		if(is_dead())
			return
		sleep(3)
*/

/mob/living/simple_animal/fish/koi/poisonous/proc/react_to_attack(mob/attacker)
	if(!attacker)
		visible_message("[attacker] is a dork!")

/mob/living/simple_animal/fish/koi/poisonous/proc/sting(var/mob/living/M)
	if(!M.reagents)
		return 0
	M.reagents.add_reagent("toxin", 2)
	M.reagents.add_reagent("impedrezene", 1)
	return 1