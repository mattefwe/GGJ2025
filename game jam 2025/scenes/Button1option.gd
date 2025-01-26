extends Button
func getText():
	var eventid = Level.levelid
	text = Evetlist.events[int(eventid)-1]["options"][0]["title"]
	set_text(text)

func _on_pressed():
	Evetlist.trigger_option(0) # Replace with function body.
