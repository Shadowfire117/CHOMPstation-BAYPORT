/* Chomper chemicals */

//Special digestion healing medicine
/datum/reagent/mylozine
    name = "Mylozine"
    description = "By combining effecient burn med and DNA mending chems and catalyse it with a strong enough acid, the result is Mylozine, a chemical capable of assisting the body in recovering from being broken down inside another being."
    taste_description = "acidic"
    taste_mult = 1.5
    reagent_state = LIQUID
    color = "#2398ef"
    overdose = REAGENTS_OVERDOSE * 0.5
    scannable = 1
    flags = IGNORE_MOB_SIZE

/datum/reagent/mylozine/affect_blood(var/mob/living/carbon/M, var/alien, var/removed)
    if(alien != IS_DIONA)
        M.adjustDigestLoss(-5 * removed)