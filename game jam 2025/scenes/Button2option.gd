extends Button

@onready var click_pressed: AudioStreamPlayer2D = $"../ClickPressed"
@onready var click_hover: AudioStreamPlayer2D = $"../ClickHover"

func getText():
	var eventid = Level.levelid
	text = Evetlist.events[int(eventid)-1]["options"][1]["title"]
	set_text(text)

func _on_pressed():
	click_pressed.play()
	await get_tree().create_timer(0.2).timeout
	Evetlist.trigger_option(1) # Replace with function body.


func _on_mouse_entered() -> void:
	click_hover.play()
