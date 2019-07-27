//TFF 26/7/19 - add more firedoors
/obj/machinery/door/firedoor/glass
	name = "\improper Emergency Glass Shutter"
	desc = "Emergency air-tight shutter, capable of sealing off breached areas.  This one has a resilient glass window, allowing you to see the danger."
	icon = 'icons/obj/doors/DoorHazards_ch.dmi'
	icon_state = "door_open_g"
	glass = 1
/obj/machinery/door/firedoor/glass/hidden
	name = "\improper Emergency Shutter System"
	desc = "Emergency air-tight shutter, capable of sealing off breached areas. This model fits flush with the walls, and has a panel in the floor for maintenance."
	icon_state = "door_open_r"
	plane = TURF_PLANE

/obj/machinery/door/firedoor/glass/hidden/open()
	. = ..()
	plane = TURF_PLANE

/obj/machinery/door/firedoor/glass/hidden/close()
	. = ..()
	plane = OBJ_PLANE

/obj/machinery/door/firedoor/glass/hidden/steel
	name = "\improper Emergency Shutter System"
	desc = "Emergency air-tight shutter, capable of sealing off breached areas. This model fits flush with the walls, and has a panel in the floor for maintenance."
	icon_state = "door_open_r2"