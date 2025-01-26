extends Label
func _ready():
	var text = str("")
	var climate = WorldState.climate
	var tech = WorldState.tech
	var int_stab = WorldState.int_stab
	var unrest = WorldState.unrest
	var might = WorldState.might
	var bubble_res = WorldState.bubble_res
	var bubble_akn = WorldState.bubble_akn
	var economic_sit = WorldState.economic_sit
	
	
func getText():
	var text = ""
	var climate = WorldState.climate
	var tech = WorldState.tech
	var int_stab = WorldState.int_stab
	var unrest = WorldState.unrest
	var might = WorldState.might
	var bubble_res = WorldState.bubble_res
	var bubble_akn = WorldState.bubble_akn
	var economic_sit = WorldState.economic_sit
	if tech < 3:
		text = str("Your bubble has not seen any technological progress, and is still stuck in the stone age.")
	if tech < 6 and tech > 2:
		text = str("Your bubble has seen some technological progress, and is now developing it's first technologies, such as gunpowder and modern industry.")
	if tech < 8 and tech > 5:
		text = str("Your bubble has seen a lot of technological progress, and is now using modern computers and guns.")
	if tech > 7:
		text = str("Your bubble has reached an unseen new level of technological progress; it could very well destroy the bubble, if it wanted to...")
	###
	if climate < -10:
		text += "\nYour bubble is now freezing, and life has become almost impossible for its inhabitants."
	if climate < 10 and climate > -9:
		text += "\nYour bubble has become really cold, and life is very harsh for its inhabitants."	
	if climate < 16 and climate > 9:
		text +=  "\nYour bubble is cold, but the temperature is bearable for its inhabitants and life can prosper"
	if climate < 25 and climate > 15:
		text += "\nYour bubble has a mild temperature that's perfect for life in it"
	if climate < 34 and climate >24:
		text += "\nYour bubble has a hot temperature and is making life harder for its inhabitants"
	if climate < 40 and climate > 33:
		text += "\nYour bubble is really hot and the temperature is almost non bearable to its inhabitants, life is really hard in it"
	if climate > 39:
		text += "\nYour bubble is undergoing a heatwave and life has become almost impossible for its inhabitants"
	###
	if int_stab < -4:
		text += "\nYour bubble looks like hell on earth international stability wise"
	if int_stab < 0 and int_stab > -5:
		text += "\nYour bubble's nations have an undergoing hatred for each other"
	if int_stab < 4 and int_stab > -1:
		text += "\nYour bubble's nations are happily at peace"
	if int_stab > 3:
		text += "\nYour bubble looks like a heaven on earth international stability wise"
	###
	if might < 2 :
		text += "\nYour bubble has a low might so its power is not high"
	if might < 4 and might > 1:
		text += "\nYour bubble has a middle might but on the low side so it's not poweress but it's not powerful either"
	if might < 6 and might > 3:
		text += "\nYour bubble has middle might so it's a pretty balanced planet"
	if might < 8 and might > 5:
		text += "\nYour bubble has middle might but on the high side so it's close to being all-mighty"
	if might > 7:
		text += "\nYour bubble has high might so its power is all-mighty"
###
	if bubble_res < 1:
		text += "\nYour bubble has exploded!"
	if bubble_res < 2 and bubble_res > 0:
		text += "\nYour bubble has so little strenght that a gust of wind could pop it anytime"
	if bubble_res < 4 and bubble_res > 1:
		text += "\nYour bubble's strenght is medium so it's not about to pop abytime soon"
	if bubble_res > 3:
		text += "\nYour bubble is strong so it will not be able to be popped by anyone yet"
	###
	if bubble_akn < 5:
		text += "\nYour bubble's inhabitants have no clue about the existance of the bubble"
	if bubble_akn < 10 and bubble_akn > 4:
		text += "\nYour bubble's inhabitants are questioning if there could be something out there, but they still aren't to the point to try and prove it"
	if bubble_akn < 15 and bubble_akn > 9:
		text += "\nYour bubble's inhabitants are starting to aknowledge the fact that there's something out there and they are trying to prove it"
	if bubble_akn > 14:
		text += "\nYour bubble's inhabitants know almost everything about the bubble"
	###
	if economic_sit < -3:
		text += "\nYour bubble's economy is in shambles and it's in complete crisis"
	if economic_sit < 0 and economic_sit > -4:
		text += "\nYour bubble's economy is going down but it's not in shambles yet"
	if economic_sit < 3 and economic_sit > -1:
		text += "\nYour bubble's economy is going up but it's not flourishing yet"
	if economic_sit > 2:
		text += "\nYour bubble's economy is flourishing"
	#EndBubbleText.text += techcheck(WorldState.tech)
	#EndBubbleText.text = text + climatecheck(WorldState.climate, EndBubbleText.text)
	#EndBubbleText.text = intstabcheck(WorldState.int_stab, EndBubbleText.text)
	#EndBubbleText.text = unrestcheck(WorldState.unrest, EndBubbleText.text)
	#EndBubbleText.text = mightcheck(WorldState.might, EndBubbleText.text)
	#EndBubbleText.text = bubblerescheck(WorldState.bubble_res, EndBubbleText.text)
	#EndBubbleText.text = bubbleakncheck(WorldState.bubble_akn, EndBubbleText.text)
	#EndBubbleText.text = economicsitcheck(WorldState.economic_sit, EndBubbleText.text)
	set_text(text)
	print(text)
	#print("testo:"+EndBubbleText.text)
#controlla che anche gli estremi abbiano un'assegnazione del valore
