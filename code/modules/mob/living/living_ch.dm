/mob/living/proc/getDigestLoss()
	return 0

/mob/living/proc/adjustDigestLoss(var/amount)
	adjustBruteLoss(amount * 0.5)

/mob/living/proc/setDigestLoss(var/amount)
	adjustBruteLoss((amount * 0.5)-getBruteLoss())