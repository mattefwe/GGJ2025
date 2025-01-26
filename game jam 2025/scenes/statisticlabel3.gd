extends Label
func _process(delta):
	set_text("internal stability:"+str(WorldState.int_stab))
