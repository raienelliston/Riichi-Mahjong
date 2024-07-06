extends Node

@onready var players = [get_node("Player1"), get_node("Player2"), get_node("Player3"), get_node("Player4")]
@onready var discard_pile = $"../DiscardPile"
var tile_pool = preload("res://custom_resources/tile_pool.gd").new()
var starting_pool = preload("res://custom_resources/startingPiles/normal_start_pile.tres")
var discard_pool = get_node()
var eastWindPlayer = randi_range(0, 3)
const windOrder = ["east", '']
var current_turn = 0
var current_round = 0

func _ready():
	add_child(starting_pool)
	for player in players:
		pass
		
func start_game():
	tile_pool.initialize(starting_pool)
	var startWind = randi_range(0, 3)
	current_turn = startWind
	draw_tile(current_turn)
	players[startWind].take_turn()
	
func start_round(winner: int, eastWind: bool):
	current_turn = 0
	draw_tile(current_turn)
	
func next_turn():
	var ended_turn = current_turn
	var next_turn = ended_turn + 1
	if next_turn > 3:
		next_turn = next_turn - 4
	current_turn = next_turn
	draw_tile(current_turn)
	players[current_turn].take_turn()
	
func meld_turn(melder: int):
	current_turn = melder
	players[current_turn].take_turn()
	
func draw_tile(drawer: int):
	var drawn_tile = tile_pool.draw_tile()
	players[current_turn].add_tile(drawn_tile)
	
func discard_tile(discarded_tile: Tile):
	tile_pool.discard_tile(discarded_tile)
	
func end_round():
	var winner = 0 #figure out how to get this here
	
func end_game():
	pass
