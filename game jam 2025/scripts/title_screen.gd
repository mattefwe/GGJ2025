extends Control

@onready var click_pressed: AudioStreamPlayer2D = $ClickPressed
@onready var click_hover: AudioStreamPlayer2D = $ClickHover

func _on_play_button_pressed() -> void:
	click_pressed.play()
	await get_tree().create_timer(0.2).timeout
	Global.music = 2
	Global.scene_n = 1
	Evetlist.begin()
	get_tree().change_scene_to_file("res://scenes/in_game.tscn")
	

func _on_options_button_pressed() -> void:
	click_pressed.play()
	Global.opt_on = 1

func _on_quit_button_pressed() -> void:
	click_pressed.play()
	await get_tree().create_timer(0.2).timeout
	get_tree().quit()


func _on_play_button_mouse_entered() -> void:
	click_hover.play()

func _on_options_button_mouse_entered() -> void:
	click_hover.play()

func _on_quit_button_mouse_entered() -> void:
	click_hover.play()
