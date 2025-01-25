extends Node2D

var fading = false

func _process(delta: float) -> void:
	if Global.music == 2:
		$TitleMusic.stop()
		$BackgroundMusic.play()
		Global.music = 0
