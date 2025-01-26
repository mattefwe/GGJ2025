extends Label
func _process(delta):
	set_text("climate:"+str(WorldState.climate))
