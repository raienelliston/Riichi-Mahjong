class_name PlayerInfo
extends TilePile

signal balance_changed
signal hand_updated

@export var starting_balance: int


var concealed: bool : set = update_conceal
var balance: int : set = set_balance
var hand: Array[Tile] = []
var SeatWind: SeatWinds : set = set_seat
#idk how to do nested, so every tile in this repersents a set
var sets: Array[Tile] = []
var kans: Array[Tile]
#each tile repersents the start of a straigt
var straights: Array[Tile] = []

func set_seat() -> SeatWinds:
	pass

func set_balance(value : int) -> void:
	balance = value
	balance_changed.emit()
	
func update_conceal(new_conceal: bool):
	concealed = new_conceal

func add_tile(tile: Tile):
	hand.append(tile)
	hand_updated.emit()
	
func discard_tile(tile: Tile):
	var index = hand.find(tile)
	if index:
		hand.remove_at(index)
	hand_updated.emit()

func riichi():
	pass
	
func tsumo():
	pass
	
func ron():
	pass
