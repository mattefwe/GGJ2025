extends Button
var id = Evetlist.arrayevents[0]

@onready var click_hover: AudioStreamPlayer2D = $"../../ClickHover"
@onready var click_pressed: AudioStreamPlayer2D = $"../../ClickPressed"

func _ready():
	print(Evetlist.arrayevents)
	print(id)
	set_text(Evetlist.events[id-1]["title"])
	var texture = Evetlist.events[id-1]["icon"]
	$TextureRect.texture = ResourceLoader.load(texture)
func _on_pressed():
	click_pressed.play()
	print(id)
	Level.changelevel(id)
	Evetlist.trigger_event(id)
	WorldState.eventopen(1)

func _process(delta):
	if WorldState.event1opened == true:
		visible = false


func _on_mouse_entered() -> void:
	click_hover.play()
