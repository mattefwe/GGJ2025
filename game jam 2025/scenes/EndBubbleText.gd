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
