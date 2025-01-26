extends Button

@onready var click_pressed: AudioStreamPlayer2D = $"../ClickPressed"
@onready var click_hover: AudioStreamPlayer2D = $"../ClickHover"

func getText():
	var eventid = Level.levelid
	if Evetlist.events[int(eventid)]["options"].size() > 3:
		print(Evetlist.events[int(eventid)]["options"])
		text = Evetlist.events[int(eventid)]["options"][3]["title"]
		set_text(text)
	else:
		visible = false

func _on_pressed():
	click_pressed.play()
	await get_tree().create_timer(0.2).timeout
	Evetlist.trigger_option(3) # Replace with function body.


func _on_mouse_entered() -> void:
	click_hover.play()
