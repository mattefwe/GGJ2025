extends Button

@onready var click_pressed: AudioStreamPlayer2D = $"../ClickPressed"
@onready var click_hover: AudioStreamPlayer2D = $"../ClickHover"

func getText():
	var eventid = Level.levelid
	#print("size:",Evetlist.events[int(eventid)-1]["options"].size())
	if Evetlist.events[int(eventid)]["options"].size() > 2:
		#print("ok")
		print("array:"+str(Evetlist.events[int(eventid)]["options"]))
		text = Evetlist.events[int(eventid)]["options"][2]["title"]
		print(text)
		set_text(text)
	else:
		visible = false

func _on_pressed():
	click_pressed.play()
	await get_tree().create_timer(0.2).timeout
	Evetlist.trigger_option(2) # Replace with function body.


func _on_mouse_entered() -> void:
	click_hover.play()
