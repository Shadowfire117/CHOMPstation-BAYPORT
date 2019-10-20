//TFF 28/7/19 - add sofas ported from Paradise
/datum/stack_recipe/furniture/chair/sofa
	title = "sofa"
	req_amount = 2

/datum/stack_recipe/furniture/chair/sofa/middle
	title = "sofa, middle"

#define SOFA(color) /datum/stack_recipe/furniture/chair/sofa/##color{\
	result_type = /obj/structure/bed/chair/sofa/middle/##color;\
	modifiers = list(#color)\
	}
SOFA(beige)
SOFA(black)
SOFA(blue)
SOFA(brown)
SOFA(lime)
SOFA(teal)
SOFA(red)
SOFA(purple)
SOFA(green)
SOFA(yellow)
#undef SOFA

/datum/stack_recipe/furniture/chair/sofa/left
	title = "sofa, left"

#define SOFA_L(color) /datum/stack_recipe/furniture/chair/sofa/left/##color{\
	result_type = /obj/structure/bed/chair/sofa/left/##color;\
	modifiers = list(#color)\
	}
SOFA_L(beige)
SOFA_L(black)
SOFA_L(blue)
SOFA_L(brown)
SOFA_L(lime)
SOFA_L(teal)
SOFA_L(red)
SOFA_L(purple)
SOFA_L(green)
SOFA_L(yellow)
#undef SOFA_L

/datum/stack_recipe/furniture/chair/sofa/right
	title = "sofa, right"

#define SOFA_R(color) /datum/stack_recipe/furniture/chair/sofa/right/##color{\
	result_type = /obj/structure/bed/chair/sofa/right/##color;\
	modifiers = list(#color)\
	}
SOFA_R(beige)
SOFA_R(black)
SOFA_R(blue)
SOFA_R(brown)
SOFA_R(lime)
SOFA_R(teal)
SOFA_R(red)
SOFA_R(purple)
SOFA_R(green)
SOFA_R(yellow)
#undef SOFA_R

/datum/stack_recipe/furniture/chair/sofa/corner
	title = "sofa, corner"

#define SOFA_CO(color) /datum/stack_recipe/furniture/chair/sofa/corner/##color{\
	result_type = /obj/structure/bed/chair/sofa/corner/##color;\
	modifiers = list(#color)\
	}
SOFA_CO(beige)
SOFA_CO(black)
SOFA_CO(blue)
SOFA_CO(brown)
SOFA_CO(lime)
SOFA_CO(teal)
SOFA_CO(red)
SOFA_CO(purple)
SOFA_CO(green)
SOFA_CO(yellow)
#undef SOFA_CO

/datum/stack_recipe/furniture/chair/sofa/old
	title = "old sofa"
	req_amount = 2

/datum/stack_recipe/furniture/chair/sofa/old/middle
	title = "sofa, middle"
	result_type = /obj/structure/bed/chair/sofa/old

/datum/stack_recipe/furniture/chair/sofa/old/display_name()
	return modifiers ? jointext(modifiers + title, " ") : title // Bypass material

/datum/stack_recipe/furniture/chair/sofa/old/left
	title = "sofa, left"
	result_type = /obj/structure/bed/chair/sofa/old/left

/datum/stack_recipe/furniture/chair/sofa/old/right
	title = "sofa, right"
	result_type = /obj/structure/bed/chair/sofa/old/right

/datum/stack_recipe/furniture/chair/sofa/old/corner
	title = "sofa, corner"
	result_type = /obj/structure/bed/chair/sofa/old/corner
