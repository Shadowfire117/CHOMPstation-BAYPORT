//TFF 26/7/19 - add more firedoors
/obj/machinery/door/firedoor/hidden
	name = "\improper Emergency Shutter System"
	desc = "Emergency air-tight shutter, capable of sealing off breached areas. This model fits flush with the walls, and has a panel in the floor for maintenance."
	icon = 'icons/obj/doors/hazard/door_ch.dmi'
	icon_state = "open"
	plane = TURF_PLANE

/obj/machinery/door/firedoor/hidden/open()
	. = ..()
	plane = TURF_PLANE

/obj/machinery/door/firedoor/hidden/close()
	. = ..()
	plane = OBJ_PLANE