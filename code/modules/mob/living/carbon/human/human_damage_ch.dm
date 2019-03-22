/mob/living/carbon/human/getDigestLoss()
	var/amount = 0
	for(var/obj/item/organ/external/E in organs)
		amount += E.get_digest_damage()
	return amount

/mob/living/carbon/human/setDigestLoss(var/amount)
	adjustDigestLoss(getDigestLoss()-amount)

/mob/living/carbon/human/adjustDigestLoss(var/amount)
	var/heal = amount < 0
	amount = abs(amount)

	var/list/pick_organs = organs.Copy()
	while(amount > 0 && pick_organs.len)
		var/obj/item/organ/external/E = pick(pick_organs)
		pick_organs -= E
		if(heal)
			amount -= E.remove_digest_damage(amount)
		else
			amount -= E.add_digest_damage(amount)
	BITSET(hud_updateflag, HEALTH_HUD)