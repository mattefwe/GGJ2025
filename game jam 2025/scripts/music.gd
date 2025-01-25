extends Node2D

var fading = false

func _process(delta: float) -> void:
	if Global.music == 2:
		$TitleMusic.stop()
		$BackgroundMusic.play()
		Global.music = 0
	if Global.music == 1:
		$BackgroundMusic.stop()
		$TitleMusic.play()
		Global.music = 0
