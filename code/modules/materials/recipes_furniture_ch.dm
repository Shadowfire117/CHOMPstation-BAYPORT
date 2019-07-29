//TFF 28/7/19 - add sofas ported from Paradise
/datum/stack_recipe/furniture/chair/sofa
	title = "sofa, middle"
	req_amount = 2

#define SOFA(color) /datum/stack_recipe/furniture/chair/sofa/##color{\
	result_type = /obj/structure/bed/chair/sofa/##color;\
	modifiers = list(#color)\
	}
SOFA(beige)
SOFA(black)
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
SOFA_CO(brown)
SOFA_CO(lime)
SOFA_CO(teal)
SOFA_CO(red)
SOFA_CO(purple)
SOFA_CO(green)
SOFA_CO(yellow)
#undef SOFA_CO

/datum/stack_recipe/furniture/chair/oldsofa
	title = "sofa"
	result_type = /obj/structure/bed/chair/oldsofa
	req_amount = 2

/datum/stack_recipe/furniture/chair/oldsofa/display_name()
	return modifiers ? jointext(modifiers + title, " ") : title // Bypass material

/datum/stack_recipe/furniture/chair/oldsofa/left
	title = "sofa, left"
	result_type = /obj/structure/bed/chair/oldsofa/left

/datum/stack_recipe/furniture/chair/oldsofa/right
	title = "sofa, right"
	result_type = /obj/structure/bed/chair/oldsofa/right

/datum/stack_recipe/furniture/chair/oldsofa/corner
	title = "sofa, corner"
	result_type = /obj/structure/bed/chair/oldsofa/corner
