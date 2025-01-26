extends Button
func getText():
	var eventid = Level.levelid
	if Evetlist.events[int(eventid)-1]["options"].size() > 3:
		text = Evetlist.events[int(eventid)-1]["options"][3]["title"]
		set_text(text)
		visible = true
		$"..".visible = true
	else:
		visible = false
		$"..".visible = false

func _on_pressed():
	Evetlist.trigger_option(3) # Replace with function body.
