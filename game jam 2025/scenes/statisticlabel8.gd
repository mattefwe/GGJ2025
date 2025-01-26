extends Label
func _process(delta):
	set_text("economic situation:"+str(WorldState.economic_sit))
