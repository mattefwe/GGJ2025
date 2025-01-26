extends Node

var bubbles_completed = 0

var rng = RandomNumberGenerator.new()
#var my_random_number = rng.randi_range(1, 4)

var economic_sit = rng.randi_range(-5,5)
var climate = rng.randi_range(-10,40)
var tech = rng.randi_range(0,10)
var int_stab = rng.randi_range(-7,7)
var unrest = rng.randi_range(0,10)
var might = rng.randi_range(0,10)
var bubble_res = rng.randi_range(0,5)
var bubble_akn = rng.randi_range(0,20)
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
	var rng = RandomNumberGenerator.new()
#var my_random_number = rng.randi_range(1, 4)

	var economic_sit = rng.randi_range(-5,5)
	var climate = rng.randi_range(-10,40)
	var tech = rng.randi_range(0,10)
	var int_stab = rng.randi_range(-7,7)
	var unrest = rng.randi_range(0,10)
	var might = rng.randi_range(0,10)
	var bubble_res = rng.randi_range(0,5)
	var bubble_akn = rng.randi_range(0,20)
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
	
func bubblecompleted():
	if WorldState.bubbles_completed == 99:
		get_tree().change_scene_to_file("res://scenes/trueend.tscn")
	else:
		get_tree().change_scene_to_file("res://scenes/in_game.tscn")
		WorldState.bubbles_completed += 1
		WorldState.event1opened = false
		WorldState.event2opened = false
		WorldState.event3opened = false
		WorldState.event4opened = false
		WorldState.event5opened = false
		Evetlist.begin()
