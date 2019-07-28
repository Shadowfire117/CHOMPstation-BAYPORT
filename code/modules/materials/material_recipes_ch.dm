//TFF 28/7/19 - add sofas ported from Paradise
/material/steel/generate_recipes(var/reinforce_material)
	if(reinforce_material)	//recipies below don't support composite materials
		return
	. += new/datum/stack_recipe_list("left sofa end", create_recipe_list(/datum/stack_recipe/furniture/chair/sofa/left))
	. += new/datum/stack_recipe_list("middle sofa", create_recipe_list(/datum/stack_recipe/furniture/chair/sofa))
	. += new/datum/stack_recipe_list("right sofa end", create_recipe_list(/datum/stack_recipe/furniture/chair/sofa/right))
	. += new/datum/stack_recipe_list("corner sofa", create_recipe_list(/datum/stack_recipe/furniture/chair/sofa/corner))
	. += new/datum/stack_recipe_list("old sofa", create_recipe_list(/datum/stack_recipe/furniture/chair/oldsofa))
