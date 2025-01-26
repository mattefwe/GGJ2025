extends Button
func getText():
	var eventid = Level.levelid
	#print("size:",Evetlist.events[int(eventid)-1]["options"].size())
	if Evetlist.events[int(eventid)-1]["options"].size() > 2:
		#print("ok")
		text = Evetlist.events[int(eventid)-1]["options"][2]["title"]
		print(text)
		set_text(text)
		visible = true
		$"..".visible = true
	else:
		visible = false
		$"..".visible = false

func _on_pressed():
	Evetlist.trigger_option(2) # Replace with function body.
