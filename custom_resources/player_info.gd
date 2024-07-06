class_name PlayerInfo
extends Tile

signal balance_changed
signal hand_updated

@export var starting_balance: int


var concealed: bool : set = update_conceal
var balance: int : set = set_balance
var hand: Array[Tile] = []


func set_balance(value : int) -> void:
	balance = value
	balance_changed.emit()
	
func update_conceal(new_conceal: bool):
	concealed = new_conceal

func add_tile(tile: Tile):
	hand.append(tile)
	hand_updated.emit()
	
func remove_tile(tile: Tile):
	var index = hand.find(tile)
	if index:
		hand.remove_at(index)
	hand_updated.emit()
