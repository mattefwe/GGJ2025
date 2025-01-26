extends Label
func getText():
	var id = Level.levelid
	set_text(Evetlist.events[id]["desc"])
