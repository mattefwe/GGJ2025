extends Label
func _process(delta):
	set_text("global might:"+str(WorldState.might))
