extends Button


func _on_pressed():
	WorldState.bubblecompleted()
	get_tree().change_scene_to_file("res://scenes/in_game.tscn")
	print("ok") # Replace with function body.
