extends Label
func _process(delta):
	set_text("tech:"+str(WorldState.tech))
