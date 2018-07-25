/proc/log_nsay(text, inside, mob/speaker)
	if (config.log_say)
		game_log("NSAY","(NIF:[inside]): [speaker]: [html_decode(text)]")

/proc/log_nme(text, inside, mob/speaker)
	if (config.log_emote)
		game_log("NME","(NIF:[inside]): [speaker]: [html_decode(text)]")

/proc/log_subtle(text, mob/speaker)
	if (config.log_emote)
		game_log("SUBTLE:","[speaker]: [html_decode(text)]")
