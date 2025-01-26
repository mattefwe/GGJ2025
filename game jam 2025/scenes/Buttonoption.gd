extends Panel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
#func _button_pressed(eventindex, id):
	#Buttontext.getText(Evetlist.trigger_option(eventindex,id))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	Evetlist.trigger_option(1)# Replace with function body.
