/obj/structure/table/bench
	name = "bench frame"
	icon = 'icons/obj/bench_ch.dmi'
	icon_state = "frame"
	desc = "It's a bench, for putting things on. Or standing on, if you really want to."
	can_reinforce = 0
	flipped = -1
	density = 0

/obj/structure/table/bench/New()
	..()
	verbs -= /obj/structure/table/verb/do_flip
	verbs -= /obj/structure/table/proc/do_put

/obj/structure/table/bench/update_desc()
	if(material)
		name = "[material.display_name] bench"
	else
		name = "bench frame"

/obj/structure/table/bench/CanPass(atom/movable/mover)
	return 1

/obj/structure/table/bench/attackby(obj/item/W, mob/user, var/click_params)
	if (!W) return

	if(reinforced && isScrewdriver(W))
		remove_reinforced(W, user)
		if(!reinforced)
			update_desc()
			update_icon()
			update_material()
		return 1

	if(carpeted && isCrowbar(W))
		user.visible_message("<span class='notice'>\The [user] removes the carpet from \the [src].</span>",
		                              "<span class='notice'>You remove the carpet from \the [src].</span>")
		new /obj/item/stack/tile/carpet(loc)
		carpeted = 0
		update_icon()
		return 1

	if(!carpeted && material && istype(W, /obj/item/stack/tile/carpet))
		var/obj/item/stack/tile/carpet/C = W
		if(C.use(1))
			user.visible_message("<span class='notice'>\The [user] adds \the [C] to \the [src].</span>",
			                              "<span class='notice'>You add \the [C] to \the [src].</span>")
			carpeted = 1
			update_icon()
			return 1
		else
			to_chat(user, "<span class='warning'>You don't have enough carpet!</span>")
	if(!reinforced && !carpeted && material && isWrench(W) && user.a_intent == I_HURT) //robots dont have disarm so it's harm
		remove_material(W, user)
		if(!material)
			update_connections(1)
			update_icon()
			for(var/obj/structure/table/T in oview(src, 1))
				T.update_icon()
			update_desc()
			update_material()
		return 1

	if(!carpeted && !reinforced && !material && isWrench(W) && user.a_intent == I_HURT)
		dismantle(W, user)
		return 1

	if(health < maxhealth && isWelder(W))
		var/obj/item/weapon/weldingtool/F = W
		if(F.welding)
			to_chat(user, "<span class='notice'>You begin reparing damage to \the [src].</span>")
			playsound(src.loc, 'sound/items/Welder.ogg', 50, 1)
			if(!do_after(user, 20, src) || !F.remove_fuel(1, user))
				return
			user.visible_message("<span class='notice'>\The [user] repairs some damage to \the [src].</span>",
			                              "<span class='notice'>You repair some damage to \the [src].</span>")
			health = max(health+(maxhealth/5), maxhealth) // 20% repair per application
			return 1

	if(!material && can_plate && istype(W, /obj/item/stack/material))
		material = common_material_add(W, user, "plat")
		if(material)
			update_connections(1)
			update_icon()
			update_desc()
			update_material()
		return 1

	// Handle dismantling or placing things on the table from here on.
	if(isrobot(user))
		return

	if(W.loc != user) // This should stop mounted modules ending up outside the module.
		return

	if(istype(W, /obj/item/weapon/melee/energy/blade) || istype(W,/obj/item/psychic_power/psiblade/master/grand/paramount))
		var/datum/effect/effect/system/spark_spread/spark_system = new /datum/effect/effect/system/spark_spread()
		spark_system.set_up(5, 0, src.loc)
		spark_system.start()
		playsound(src.loc, 'sound/weapons/blade1.ogg', 50, 1)
		playsound(src.loc, "sparks", 50, 1)
		user.visible_message("<span class='danger'>\The [src] was sliced apart by [user]!</span>")
		break_to_parts()
		return

	if(can_plate && !material)
		to_chat(user, "<span class='warning'>There's nothing to put \the [W] on! Try adding plating to \the [src] first.</span>")
		return


    // We dont want people to put things on benches
	/*
	if(user.unEquip(W, src.loc))
		auto_align(W, click_params)
		return 1
	*/

