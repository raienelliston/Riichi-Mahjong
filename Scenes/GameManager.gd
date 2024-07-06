extends Node

@onready var players = [get_node("Player1"), get_node("Player2"), get_node("Player3"), get_node("Player4")]
var eastWindPlayer = randi_range(0, 3)
const windOrder = ["east", '']
var current_turn = 0
var current_round = 0

func _ready():
	for player in players:
		pass
		
func start_game():

	current_turn = 0
	
func start_round(winner: int, westWind: bool):
	current_turn = 0
	
func next_turn():
	pass
	
func end_round():
	var winner = 0 #figure out how to get this here
	
	
func end_game():
	pass
