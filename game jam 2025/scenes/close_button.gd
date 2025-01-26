extends Button

@onready var click_pressed: AudioStreamPlayer2D = $"../ClickPressed"
@onready var click_hover: AudioStreamPlayer2D = $"../ClickHover"
#@onready var panel: Panel = $".."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	click_pressed.play()
	Global.et_on = 0
	if WorldState.event1opened and WorldState.event2opened and WorldState.event3opened and WorldState.event4opened and WorldState.event5opened:
		get_tree().change_scene_to_file("res://scenes/BubbleEnd.tscn")


func _on_mouse_entered() -> void:
	click_hover.play()
