/obj/item/organ/external
	var/digest_dam = 0                  // Actual current brute damage.

/obj/item/organ/external/proc/get_digest_damage()
	return digest_dam

/obj/item/organ/external/proc/remove_digest_damage(var/amount)
	var/last_dig_dam = digest_dam
	digest_dam = min(100,max(0,digest_dam - amount))
	return -(digest_dam - last_dig_dam)

/obj/item/organ/external/proc/add_digest_damage(var/amount)
	var/last_dig_dam = digest_dam
	digest_dam = min(100,max(0,digest_dam + amount))
	return (digest_dam - last_dig_dam)