extends Node

var player1Discard: Array[Tile] = []
var player2Discard: Array[Tile] = []
var player3Discard: Array[Tile] = []
var player4Discard: Array[Tile] = []

var discard_pools = [player1Discard, player2Discard, player3Discard, player4Discard]

func discard_tile(tile: Tile, discarder: int):
	discard_pools[discarder].append(tile)
	
func get_discard_pile(player: int):
	return discard_pools[player]
	
func get_all_discard_piles():
	return discard_pools
