/proc/AverageColor(var/icon/I, var/accurate = 0, var/ignoreGreyscale = 0)
//Accurate: Use more accurate color averaging, usually has better results and prevents muddied or overly dark colors. Mad thanks to wwjnc.
//ignoreGreyscale: Excempts greyscale colors from the color list, useful for filtering outlines or plate overlays.
	var/list/colors = ListColors(I, ignoreGreyscale)
	if(!colors.len)
		return null

	var/list/colorsum = list(0, 0, 0) //Holds the sum of the RGB values to calculate the average
	var/list/RGB = list(0, 0, 0) //Temp list for each color
	var/total = colors.len

	var/final_average
	if (accurate) //keeping it legible
		for(var/i = 1 to total)
			RGB = ReadRGB(colors[i])
			colorsum[1] += RGB[1]*RGB[1]
			colorsum[2] += RGB[2]*RGB[2]
			colorsum[3] += RGB[3]*RGB[3]
		final_average = rgb(sqrt(colorsum[1]/total), sqrt(colorsum[2]/total), sqrt(colorsum[3]/total))
	else
		for(var/i = 1 to total)
			RGB = ReadRGB(colors[i])
			colorsum[1] += RGB[1]
			colorsum[2] += RGB[2]
			colorsum[3] += RGB[3]
		final_average = rgb(colorsum[1]/total, colorsum[2]/total, colorsum[3]/total)
	return final_average

/proc/ListColors(var/icon/I, var/ignoreGreyscale = 0)
	var/list/colors = list()
	for(var/x_pixel = 1 to I.Width())
		for(var/y_pixel = 1 to I.Height())
			var/this_color = I.GetPixel(x_pixel, y_pixel)
			if(this_color)
				if (ignoreGreyscale && ReadHSV(RGBtoHSV(this_color))[2] == 0) //If saturation is 0, must be greyscale
					continue
				colors.Add(this_color)
	return colors

/proc/empty_Y_space(var/icon/I) //Returns the amount of lines containing only transparent pixels in an icon, starting from the bottom
	for(var/y_pixel = 1 to I.Height())
		for(var/x_pixel = 1 to I.Width())
			if (I.GetPixel(x_pixel, y_pixel))
				return y_pixel - 1
	return null


/proc/gen_hud_image(var/file, var/person, var/state, var/plane)
	var/image/img = image(file, person, state)
	img.plane = plane //Thanks Byond.
	img.layer = MOB_LAYER-0.2
	img.appearance_flags = APPEARANCE_UI
	return img


/**
* Animate a 'halo' around an object.
*
* This proc is not exactly cheap. You'd be well advised to set up many-loops rather than call this super-often. getCompoundIcon is
* mostly to blame for this. If Byond ever implements a way to get something's icon more 'gently' than this, do that instead.
*
* @param A This is the atom to put the halo on
* @param simple_icons If set to TRUE, will just perform a very basic icon and icon_state steal. DO USE when possible.
* @param color This is the color for the halo
* @param anim_duration This decides how fast (or slow) the animation plays
* @param offset Mysterious variable that determines size of the halo's gap from icon
* @param loops How many times the animation loops
* @param grow_to Relative to the size of the icon, how big the halo grows while fading (don't use negatives for inward halos, use < 1)
* @param pixel_scale If you'd like the halo to use pixel scale or the default 'fuzzy' scale
*/
/proc/animate_aura(var/atom/A, var/simple_icons, var/color = "#00FF22", var/anim_duration = 5, var/offset = 1, var/loops = 1, var/grow_to = 2, var/pixel_scale = FALSE)
	ASSERT(A)

	//Take a guess at this, if they didn't set it
	if(isnull(simple_icons))
		if(ismob(A))
			simple_icons = FALSE
		else
			simple_icons = TRUE

	//Get their icon
	var/icon/hole

	if(simple_icons)
		hole = icon(A.icon, A.icon_state)
	else
		hole = getCompoundIcon(A)

	hole.MapColors(0,0,0, 0,0,0, 0,0,0, 1,1,1) //White.

	//Make a bigger version
	var/icon/grower = new(hole)
	var/orig_width = grower.Width()
	var/orig_height = grower.Height()
	var/end_width = orig_width+(offset*2)
	var/end_height = orig_height+(offset*2)
	var/half_diff_width = (end_width-orig_width)*0.5
	var/half_diff_height = (end_height-orig_height)*0.5

	//Make icon black
	grower.SwapColor("#FFFFFF","#000000") //Black.

	//Scale both icons big so we don't have to deal with low-pixel garbage issues
	grower.Scale(orig_width*10,orig_height*10)
	hole.Scale(orig_width*9,orig_height*9)

	//Blend the hole in
	grower.Blend(hole,ICON_OVERLAY, x = ((orig_width*10-orig_width*9)*0.5)+1, y = ((orig_height*10-orig_height*9)*0.5)+1)

	//Swap white to zero alpha
	grower.SwapColor("#FFFFFF","#00000000")

	//Color it
	grower.SwapColor("#000000",color)

	//Scale it to final height
	grower.Scale(end_width,end_height)

	//Flick it onto them
	var/image/img = image(grower,A)
	if(pixel_scale)
		img.appearance_flags |= PIXEL_SCALE
	img.pixel_x = half_diff_width*-1
	img.pixel_y = half_diff_height*-1
	flick_overlay_view(img, A, anim_duration*loops, TRUE)

	//Animate it growing
	animate(img, alpha = 0, transform = matrix()*grow_to, time = anim_duration, loop = loops)


//getFlatIcon but generates an icon that can face ALL four directions. The only four.
/proc/getCompoundIcon(atom/A)
	var/icon/north = getFlatIcon(A,defdir=NORTH)
	var/icon/south = getFlatIcon(A,defdir=SOUTH)
	var/icon/east = getFlatIcon(A,defdir=EAST)
	var/icon/west = getFlatIcon(A,defdir=WEST)

	//Starts with a blank icon because of byond bugs.
	var/icon/full = icon('icons/effects/effects.dmi', "icon_state"="nothing")

	full.Insert(north,dir=NORTH)
	full.Insert(south,dir=SOUTH)
	full.Insert(east,dir=EAST)
	full.Insert(west,dir=WEST)
	qdel(north)
	qdel(south)
	qdel(east)
	qdel(west)
	return full