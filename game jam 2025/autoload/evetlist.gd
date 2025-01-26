extends Node

var events =[
	{
		#if "climate" > 32
		"id" : "1",
		"sphere":"climate",
		"title" : "Volcanic eruption",
		"desc" : "A volcano is about to explode",
		#"option_numb": 2
		"options":[
			{
				"id": "1.1",
				"title": "Don't do anything",
				"desc": "You decide to not do anything since it's a natural phenomenon",
				"world_update":{
					"climate": +2
					#provoca siccità
				}
			},
			{
				"id": "1.2",
				"title": "Rescue the people",
				"desc": "You decide to rescue the people that got caught up in the eruption",
				"world_update":{
					"climate": +2,
					"unrest" : - 1
				}
			}
		]
	},
	{
		#random
		"id" : "2",
		"sphere":"climate",
		"title" : "Flood",
		"desc" : "The rain started coming heavy and the world is flooded",
		"options":[
			{
				"id": "2.1",
				"title": "Don't do anything",
				"desc": "You decide to not do anything since it's a natural phenomenon",
				"world_update":{
					"climate": -5,
					#provoca gelo
				}
			},
			{
				"id": "2.2",
				"title": "Rescue people",
				"desc": "You decide to rescue the people that got caught up in the flood",
				"world_update":{
					"climate": -5,
					"unrest": -0.5
					
				}
			
			}
		]
	},
	{
		#climate > 35 or volcanic eruption
		"id" : "3",
		"sphere":"climate",
		"title" : "Drought",
		"desc" : "The climate is too hot and we are approaching a drought",
		"options":[
			{ 
				"id": "3.1",
				"title": "Don't do anything",
				"desc": "You decide to not do anything since it's a natural phenomenon",
				"world_update":{
					"climate": +1.5
				}
			},
			{
				"id": "3.2",
				"title": "Help the people",
				"desc": "You decide to rescue the people that got caught up in the heat",
				"world_update":{
					"climate": +1.5,
					"unrest": -0.5
					
				}
			}
		]
	},
	{
		#random or flood
		"id" : "4",
		"sphere":"climate",
		"title" : "Tornado",
		"desc" : "A A tornado has appeared and it seems to be heading straight for the planet",
		"options":[
			{
				"id": "4.1",
				"title": "Don't do anything",
				"desc": "You decide to not do anything since it's a natural phenomenon",
				"world_update":{
					"climate": -2
				}
			
			},
			{
				"id": "4.2",
				"title": "Make everyone go outside",
				"desc": "You tell everybody that they should go outside",
				"world_update":{
					"climate": -2,
					"unrest": +0.5
				}
			
			},
			{
				"id": "4.3",
				"title": "Help the people",
				"desc": "You decide to rescue the people that got caught up in the tornado",
				"world_update":{
					"climate": -2,
					"unrest": -0.5
				}
			
			},
		]
	},
	{
		#random or flood
		"id" : "5",
		"sphere":"climate",
		"title" : "Frost",
		"desc" : "The temperature is so cold that everything starts freezing",
		"options":[
			{
				"id": "5.1",
				"title": "Don't do anything",
				"desc": "You decide to not do anything since it's a natural phenomenon",
				"world_update":{
					"climate": -5
				}
			
			},
			{
				"id": "5.2",
				"title": "Help the people",
				"desc": "You decide to rescue the people that got caught up in the cold",
				"world_update":{
					"climate": -5,
					"unrest": -0.5
				}
			
			},
		]
	},
	{
		"id" : "6",
		"sphere":"climate",
		"title" : "Climate crisis",
		"desc" : "The planet is in a climate crisis",
		"options":[
			{
				"id": "6.1",
				"title": "Don't do anything",
				"desc": "You decide to not do anything since it's a natural phenomenon",
				"world_update":{
					"climate": +5
				}
			
			},
			{
				"id": "6.2",
				"title": "Encourage green energy",
				"desc": "You encourage everybody to use green energy",
				"world_update":{
					"climate": -3
				}
			
			},
			{
				"id": "6.3",
				"title": "Encourage polluting",
				"desc": "You encourage people to start polluting the world more",
				"world_update":{
					"climate": +7
				}
			
			},
			
		]
	},
	{
		"id" : "7",
		"sphere":"technology",
		"title" : "New discovery",
		"desc" : "A new scientist has discovered a new technological advancement",
		"options":[
			{
				"id": "7.1",
				"title": "Make it accessible to everyone",
				"desc": "You decide to make this thecnological advancement accessible to everyone",
				"world_update":{
					"tech": +2,
					"unrest": -1.5
				}
			
			},
			{
				"id": "7.2",
				"title": "Sweep it under the rug",
				"desc": "You decide that this news is not worth enough so you sweep it under the rug",
				"world_update":{
					"tech": +0,
					#brings to researcher death
				}
			
			},
		]
	},
	{
		"id" : "8",
		"sphere":"technology",
		"title" : "Loss of important documents",
		"desc" : "Some important scientific papers have gotten lost",
		"options":[
			{
				"id": "8.1",
				"title": "Don't do anything",
				"desc": "",
				"world_update":{
					"tech" : -3
					#può provocare complottisti
				}
			
			},
			{
				"id": "8.2",
				"title": "Search for them",
				"desc": "",
				"world_update":{
					"tech": +1.5
				}
				#publish them (tech +2) or burn them (tech -1)
			
			},
			{
				"id": "8.3",
				"title": "Make someone find them for you",
				"desc": "",
				"world_update":{
					"tech": +1
				}
			
			},
		]
	},
	{
		"id" : "9",
		"sphere":"international_stability",
		"title" : "War",
		"desc" : "",
		"options":[
			{
				"id": "9.1",
				"title": "Don't do anything",
				"desc": "You decide to be neutral and to not take a side",
				"world_update":{
					"int_stability": -4.4
					#defection of soldiers
				}
			
			},
			{
				"id": "9.2",
				"title": "Side with the oppressor",
				"desc": "You decide that the oppressor's motives are valid and so you support them",
				"world_update":{
					"int_stability": -4.9
					#annexion of nation
				}
			
			},
			{
				"id": "9.3",
				"title": "Side with the oppressed",
				"desc": "You decide that the oppressed are innocent and shouldn't be attacked",
				"world_update":{
					"int_stability": -3.4
					#peace or international agreement
				}
			
			},
			{
				"id": "9.4",
				"title": "Stage a call to action",
				"desc": "You decide to take into your own hands this war and you stage a call to action for everyone who wants to become a soldier",
				"world_update":{
					"int_stability": -3.9
					#soldiers enlisted
				}
			
			},
		]
	},
	{
		"id" : "10",
		"sphere":"internationa_stability",
		"title" : "International agreement",
		"desc" : "Two nations have decide to sign an international agreement",
		"options":[
			{
				"id": "10.1",
				"title": "Be opposed to it",
				"desc": "You think that the two nations shouldn't sign this agreement, so you intervene",
				"world_update":{
					"int_stability": -2
				}
			
			},
			{
				"id": "10.2",
				"title": "Be neutral",
				"desc": "You have no feeling towards this agreement, so you decide to stay neutral",
				"world_update":{
					"int_stability": +0
				}
			
			},
			{
				"id": "10.3",
				"title": "Be in favour of it",
				"desc": "You are in favour of it and you want to make the agreement happen",
				"world_update":{
					"int_stability": +2
				}
			
			},
		]
	},
	{
		#unrest > 8
		"id" : "11",
		"sphere":"social_climate",
		"title" : "Social crisis",
		"desc" : "The world has gone downhill and now is facing a crisis",
		"options":[
			{
				"id": "11.1",
				"title": "Don't aknowledge it",
				"desc": "You choose not to do anything since crisis are necessary to the development of the world",
				"world_update":{
					"unrest": +3
				}
			
			},
			{
				"id": "11.2",
				"title": "Side with the government",
				"desc": "You think the government will be able to solve this situation so you side with them",
				"world_update":{
					"unrest": +1,
					"economic_sit": -1
				}
			
			},
			{
				"id": "11.3",
				"title": "Help estabilishing a new social situation",
				"desc": "You think neither the actual situation nor the past one are good situations so you choose to try to estabilish a new social situation",
				"world_update":{
					"unrest": -1,
					"economic_sit": +1
				}
			
			},
		]
	},
	{
		#perdita di documenti importanti
		#qualche ricercatore teorizza
		#Qualche politico fa uno slip-up

		"id" : "12",
		"sphere":"social_climate",
		"title" : "Conspiracy theorists",
		"desc" : "A group of people has chosen to not believe what they're told and to invent what they want to hear",
		"options":[
			{
				"id": "12.1",
				"title": "Support them",
				"desc": "You have chosen to give your support to them",
				"world_update":{
					"unrest": +1
				}
			
			},
			{
				"id": "12.2",
				"title": "Arrest all of them",
				"desc": "You have decided to not tolerate this behaviour and to arrest them",
				"world_update":{
					"unrest": -1
				}
			
			},
			{
				"id": "12.3",
				"title": "Ignore them",
				"desc": "You have chosen to not listen to anything that they're saying",
				"world_update":{
					"unrest": +1.5
				}
			
			},
		]
	},
	{
		"id" : "13",
		"sphere":"social_climate",
		"title" : "Revolution",
		"desc" : "The people have decided to revolt against the government",
		"options":[
			{
				"id": "13.1",
				"title": "Support the revolutioners",
				"desc": "You are in favour of this revolution and you support it wholeheartedly",
				"world_update":{
					"unrest": -2
					#revolution doesn't fail
				}
			
			},
			{
				"id": "13.2",
				"title": "Support the government",
				"desc": "You are allying with the government since you don't believe this revolution attempt to be a good one",
				"world_update":{
					"unrest": +3
					#revolution fails
				}
			
			},
			{
				"id": "13.3",
				"title": "Be neutral",
				"desc": "You don't have any opinion on the matter and you've decided to stay neutral",
				"world_update":{
					"unrest": +1
					#"peace treaty"
				}
			
			},
		]
	},
	{
		"id" : "14",
		"sphere":"social_climate",
		"title" : "Strikes",
		"desc" : "The workers have started going on strikes",
		"options":[
			{
				"id": "14.1",
				"title": "Side with the strikers",
				"desc": "You believe their reasons for doing this are justificated so you decide to side with them",
				"world_update":{
					"unrest": -1
				}
			
			},
			{
				"id": "14.2",
				"title": "Side with the employers",
				"desc": "You believe that the employers hold the rights and the strikers shouldn't have done that",
				"world_update":{
					"unrest": +1
				}
			
			},
		]
	},
	{
		"id" : "15",
		"sphere":"social_climate",
		"title" : "Coup",
		"desc" : "The population has staged a coup against the government",
		"options":[
			{
				"id": "15.1",
				"title": "Be visibly against it",
				"desc": "You believe this coup to be useless and a waste of time",
				"world_update":{
					"unrest": +1
				}
			
			},
			{
				"id": "15.2",
				"title": "Ignore it",
				"desc": "You decide that the coup is none of your business and it should stay as that",
				"world_update":{
					"unrest": +0
				}
			
			},
			{
				"id": "15.3",
				"title": "Support it",
				"desc": "You believe the coup has been done for the right cause and you wholeheartedly support it",
				"world_update":{
					"unrest": +1
				}
			
			},
		]
	},
	{
		"id" : "16",
		"sphere":"bubble_awarness",
		"title" : "A politician had a little slip-up",
		"desc" : "While talking to the public a politician has said something about an outside bubble that traps everyone inside",
		"options":[
			{
				"id": "16.1",
				"title": "Deny what they said",
				"desc": "You choose to absolutely not believe this and you start denying it",
				"world_update":{
					"unrest": -1,
					"bubble_akn" : +1
				}
			
			},
			{
				"id": "16.2",
				"title": "Fake and say nothing happened",
				"desc": "You decide to act as if the politician hasn't said anything and you ignore every attempt of talking about it",
				"world_update":{
					"unrest": +0,
					"bubble_akn": +0.5
				}
			
			},
			{
				"id": "16.3",
				"title": "Underline the comment", #to make the people more conscious
				"desc": "You believe the comment to hold a part of truth so you start underlining this truth factor in your spechees",
				"world_update":{
					"bubble_akn": +5,
					"unrest": -2
				}
			
			},
		]
	},
	{
		"id" : "17",
		"sphere":"power",
		"title" : "Mass immigration",
		"desc" : "A lot of people have deemed their part of the world not livable so they started to move away from it and they started reaching anouther one",
		"options":[
			{
				"id": "17.1",
				"title": "Close the borders",
				"desc": "You decide to close the borders between countries so that people don't have an astounding number of people coming in",
				"world_update":{
					"unrest": +1,
					"int_stab":-1
				}
			
			},
			{
				"id": "17.2",
				"title": "Welcome everyone",
				"desc": "You decide that everyoe is welcome to move away from their country if they want and the hosting country should be obligated to welcome them",
				"world_update":{
					"unrest": -1,
					"int_stability": +1
				}
			
			},
			{
				"id": "17.3",
				"title": "Accept only half of them",
				"desc": "You decide to accept only half of the people who have tried moving abroad to another country",
				"world_update":{
					"unrest": -2,
					"int_stability": -2
				}
			
			},
	{
		"id" : "18",
		"sphere":"bubble_awarness",
		"title" : "A researcher's theory",
		"desc" : "A researcher has theorized that outside your planet there might be something else",
		"options":[
			{
				"id": "18.1",
				"title": "Try to debunk it",
				"desc": "You don't agree with them and you believe that the only world that is there is your, but you can't help wondering if what the scientist said has a bit of truth in it",
				"world_update":{
					"bubble_akn": +2
				}
			
			},
			{
				"id": "18.2",
				"title": "Support it without questioning",
				"desc": "After hearing this you are sure that they're right and you believe them without questioning anything",
				"world_update":{
					"bubble_akn": +3,
				}
			
			},
			{
				"id": "18.3",
				"title": "Do some research on if it could be true",
				"desc": "You decide to do a bit of research by yourself to find out if there is a remote possibility of there being even just a bit of truth in their discourse",
				"world_update":{
					 "bubble_akn": +5
				}
			
			},
		]
	},
	{
		#economic_sit < 0
		"id" : "19",
		"sphere":"economy",
		"title" : "Inflation",
		"desc" : "In the world inflation has started going up",
		"options":[
			{
				"id": "19.1",
				"title": "Print more money",
				"desc": "You decide to print more money to help the economy",
				"world_update":{
					"economic_sit": -1
				}
			
			},
			{
				"id": "19.2",
				"title": "Raise prices",
				"desc": "You believe that raising prices is the answer to combact inflation",
				"world_update":{
					"economic_sit": -2
				}
			
			},
			{
				"id": "19.3",
				"title": "Increase taxes",
				"desc": "Increasing taxes might be the answer to stopping this economic drop",
				"world_update":{
					"economic_sit": -3
				}
			
			},
			{
				"id": "19.4",
				"title": "Decrease taxes",
				"desc": "You decide that descreasing taxes will help fixing the economy in this hard situation",
				"world_update":{
					"economic_sit": -1
				}
			
			},
		]
	},
	{
		"id" : "20",
		"sphere":"power",
		"title" : "Soldiers enlisted",
		"desc" : "A huge group of young adults has chosen to enlist in the army",
		"options":[
			{
				"id": "20.1",
				"title": "Accept in the army only half of them",
				"desc": "You decide to only admit in the army half of them",
				"world_update":{
					"might": +1.5,
					"int_stab" : +1
				}
			
			},
			{
				"id": "20.2",
				"title": "Don't accept them",
				"desc": "You decide to not accept them",
				"world_update":{
					"might": +0,
					"int_stab": -1
				}
			
			},
			{
				"id": "20.3",
				"title": "Accept all of them",
				"desc": "You decide to accept all of them",
				"world_update":{
					"might": +3,
					"int_stab": +1.5
				}
			
			},
		]
	},
	{
		"id" : "21",
		"sphere":"power",
		"title" : "Soldiers defected",
		"desc" : "A group of soldiers chose to put down their weapons and to leave the army",
		"options":[
			{
				"id": "21.1",
				"title": "Force them to come back",
				"desc": "You force them to come back through various stratagems",
				"world_update":{
					"unrest": +2,
					"might": -2
				}
			
			},
			{
				"id": "21.2",
				"title": "Converse with them on the reasons",
				"desc": "You decide to have a deep talk confronting them on the reason for their choices",
				"world_update":{
					"unrest": -1,
					"might": +1
					
				}
			
			},
			{
				"id": "21.3",
				"title": "Accept it",
				"desc": "You accept it and deal with it",
				"world_update":{}
			},
		]
	},
	{
		"id" : "22",
		"sphere":"power",
		"title" : "Mass emigration",
		"desc" : "A huge group of people has started going away from their home country",
		"options":[
			{
				"id": "22.1",
				"title": "Close the borders",
				"desc": "You decide to close the borders so that no one can get in or out",
				"world_update":{
					"unrest": +1,
					"int_stab": -1
				}
			
			},
			{
				"id": "22.2",
				"title": "Increase border control",
				"desc": "You decide to increase border control to be sure that not that much of your country's inhabitants will leave it",
				"world_update":{
					"unrest": +2,
					"int_stab": -2
				}
			
			},
		]
	},
	
		]
	},
]	
#var options = []
var arrayevents = []
# Called when the node enters the scene tree for the first time.
var rng = RandomNumberGenerator.new()

func begin():
	print("ok")
	var x = 0
	while x!=5:
		x+=1
		var my_random_number = rng.randi_range(1, 22) # Replace with function body.
		Evetlist.arrayevents.append(my_random_number)
		print(Evetlist.arrayevents)
func _ready():
	pass
#var delta_total = 0;

# Called every frame. 'deldeltta' is the elapsed time since the previous frame.
func _process(delta):
	#delta_total += delta;
	#if delta_total > 10000:
		#delta_total = 0
		#trigger_event(1);
	pass
func trigger_event(id):
	var index = -1
	for x in events:
		index += 1
		if x["id"] == str(id):
			#index = index    ### mi trova l'indice dell'evento cercato
				
			get_tree().change_scene_to_file("res://scenes/event.tscn")
			
			
			#Buttontext.getText(index, events[index]["options"])
			break

	#var _num_options = events[index].count
	
	#for x in events[index]["options"]:
	#	print(x["title"])
	#	print(x["desc"])
func trigger_option(id):
	#print(events)
	#print(events[int(Level.levelid)-1])
	#print(events[int(Level.levelid)-1]["options"])
	print("effetti:",events[int(Level.levelid)-1]["options"][int(id)-1]["world_update"])
	var effects = events[int(Level.levelid)-1]["options"][int(id)-1]["world_update"]
	for x in effects:
		#print(x, options[x])
		WorldState.world_update(x,effects[x])
	
	get_tree().change_scene_to_file("res://scenes/in_game.tscn")
