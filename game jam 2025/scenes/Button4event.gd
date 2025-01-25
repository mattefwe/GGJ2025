extends Button
var id = Evetlist.arrayevents[3]

@onready var click_pressed: AudioStreamPlayer2D = $"../../ClickPressed"
@onready var click_hover: AudioStreamPlayer2D = $"../../ClickHover"

func _ready():
	print(Evetlist.arrayevents)
	print(id)
func _on_pressed():
	click_pressed.play()
	print(id)
	Level.changelevel(id)
	Evetlist.trigger_event(id)
	WorldState.eventopen(4)

func _process(delta):
	if WorldState.event4opened == true:
		visible = false


func _on_mouse_entered() -> void:
	click_hover.play()
