extends Label
func _process(delta):
	set_text("military global power:"+str(WorldState.might))
