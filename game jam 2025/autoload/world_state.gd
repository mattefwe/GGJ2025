extends Node

var economic_sit = 0
var climate = 0
var tech = 0
var int_stab = 0
var unrest = 0
var might = 0
var bubble_res = 0
var bubble_akn = 0
var world_type = 0
# Called when the node enters the scene tree for the first time.

#############################
var event1opened = false
var event2opened = false
var event3opened = false
var event4opened = false
var event5opened = false
func eventopen(num):
	if num == 1:
		event1opened = true
	elif num == 2:
		event2opened = true
	elif num == 3:
		event3opened = true
	elif num == 4:
		event4opened = true
	elif num == 5:
		event5opened = true

func _ready():
	var economic_sit = 0
	var climate = 0
	var tech = 0
	var int_stab = 0
	var unrest = 0
	var might = 0
	var bubble_res = 0
	var bubble_akn = 0
	var world_type = 0

func world_update(parameter, change):
	if parameter == "economic_sit":
		self.economic_sit += change
	elif parameter == "climate":
		WorldState.climate += int(change)
		print(WorldState.climate)
	elif parameter == "tech":
		self.tech += change
	elif parameter == "int_stab":
		self.int_stab += change
	elif parameter == "unrest":
		self.unrest += change
	elif parameter == "might":
		self.might += change
	elif parameter == "bubble_res":
		self.bubble_res += change
	elif parameter == "bubble_akn":
		self.bubble_akn += change
	elif parameter == "world_type":
		self.world_type += change		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
