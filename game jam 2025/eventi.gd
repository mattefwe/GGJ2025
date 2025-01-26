extends Label
func _ready():
	var text = ""
	var climate = WorldState.climate
	var tech = WorldState.tech
	var int_stab = WorldState.int_stab
	var unrest = WorldState.unrest
	var might = WorldState.might
	var bubble_res = WorldState.bubble_res
	var bubble_akn = WorldState.bubble_akn
	var economic_sit = WorldState.economic_sit
#controlla che anche gli estremi abbiano un'assegnazione del valore
func techcheck(tech, text):
	if tech < 3:
		text += "Your bubble has not seen any technological progress, and is still stuck in the stone age."
	elif tech < 6 and tech > 2:
		text += "Your bubble has seen some technological progress, and is now developing it's first technologies, such as gunpowder and modern industry."
	elif tech < 8 and tech > 5:
		text += "Your bubble has seen a lot of technological progress, and is now using modern computers and guns."
	elif tech > 7:
		text += "Your bubble has reached an unseen new level of technological progress; it could very well destroy the bubble, if it wanted to..."
	return text
func climatecheck(climate, text):
	if climate < -10:
		text += "Your bubble is now freezing, and life has become almost impossible for its inhabitants."
	if climate < 10 and climate > -9:
		text += "Your bubble has become really cold, and life is very harsh for its inhabitants."	
	if climate < 16 and climate > 9:
		text +=  "Your bubble is cold, but the temperature is bearable for its inhabitants and life can prosper"
	if climate < 25 and climate > 15:
		text += "Your bubble has a mild temperature that's perfect for life in it"
	if climate < 34 and climate >24:
		text += "Your bubble has a hot temperature and is making life harder for its inhabitants"
	if climate < 40 and climate > 33:
		text += "Your bubble is really hot and the temperature is almost non bearable to its inhabitants, life is really hard in it"
	if climate > 39:
		text += "Your bubble is undergoing a heatwave and life has become almost impossible for its inhabitants"
func intstabcheck(int_stab,text):
	if int_stab < -4 and int_stab > -7:
		text += "Your bubble looks like hell on earth international stability wise"
	if int_stab < 0 and int_stab > -5:
		text += "Your bubble's nations have an undergoing hatred for each other"
	if int_stab < 4 and int_stab > -1:
		text += "Your bubble's nations are happily at peace"
	if int_stab < 7 and int_stab > 3:
		text += "Your bubble looks like a heaven on earth"
func unrestcheck(unrest,text):
	if unrest < 3 and unrest > 0:
		text += "Your bubble is on the brink of a revolution"
	if unrest < 6 and unrest > 2:
		text += "Your bubble has a social climate that's bad but still sufferable without drastic measures"
	if unrest < 8 and unrest > 5:
		text += "Your bubble has a really happy and fulfilled population"
	if unrest < 10 and unrest > 7:
		text += "Your bubble is in perfect social stability"
func mightcheck(might,text):
	if might < 2 and might > 0 :
		text += "Your bubble has a low might so its power is not high"
	if might < 4 and might > 1:
		text += "Your bubble has a middle might but on the low side so it's not poweress but it's not powerful either"
	if might < 6 and might > 3:
		text += "Your bubble has middle might so it's a pretty balanced planet"
	if might < 8 and might > 5:
		text += "Your bubble has middle might but on the high side so it's close to being all-mighty"
	if might < 10 and might > 7:
		text += "Your bubble has high might so its power is all-mighty"
func bubblerescheck(bubbleres,text):
	#if bubbleres==0:
	#	text += "Your bubble has exploded!"
	if bubbleres < 2 and bubbleres > 0:
		text += "Your bubble has so little strenght that a gust of wind could pop it anytime"
	if bubbleres < 4 and bubbleres > 1:
		text += "Your bubble's strenght is medium so it's not about to pop abytime soon"
	if bubbleres < 6 and bubbleres > 3:
		text += "Your bubble is strong so it will not be able to be popped by anyone yet"
func bubbleakncheck(bubbleakn,text):
	if bubbleakn < 5 and bubbleakn > 0:
		text += "Your bubble's inhabitants have no clue about the existance of the bubble"
	if bubbleakn < 10 and bubbleakn > 4:
		text += "Your bubble's inhabitants are questioning if there could be something out there, but they still aren't to the point to try and prove it"
	if bubbleakn < 15 and bubbleakn > 9:
		text += "Your bubble's inhabitants are starting to aknowledge the fact that there's something out there and they are trying to prove it"
	if bubbleakn < 20 and bubbleakn > 14:
		text += "Your bubble's inhabitants know almost everything about the bubble"
func economicsitcheck(economic_sit,text):
	if economic_sit < -3 and economic_sit > -5:
		text += "Your bubble's economy is in shambles and it's in complete crisis"
	if economic_sit < 0 and economic_sit > -4:
		text += "Your bubble's economy is going down but it's not in shambles yet"
	if economic_sit < 3 and economic_sit > 0:
		text += "Your bubble's economy is going up but it's not flourishing yet"
	if economic_sit < 5 and economic_sit > 2:
		text += "Your bubble's economy is flourishing"
