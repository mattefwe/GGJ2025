extends Label
func _process(delta):
	set_text("bubble resistance:"+str(WorldState.bubble_res))
