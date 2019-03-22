/obj/item/organ/external
	var/digest_dam = 0                  // Actual current brute damage.

/obj/item/organ/external/proc/get_digest_damage()
	return digest_dam

/obj/item/organ/external/proc/remove_digest_damage(var/amount)
	digest_dam = min(0,min(max_damage,digest_dam - amount))
	return -(digest_dam)

/obj/item/organ/external/proc/add_digest_damage(var/amount)
	digest_dam = min(0,min(max_damage,digest_dam + amount))
	return digest_dam