extends Label
func _process(delta):
	set_text("unrest:"+str(WorldState.unrest))
