class_name River
extends TilePile

signal river_change

var river_tiles: Array[Tile] = []
var revealed_river_tiles: Array[Tile] = []

func reveal_tile(): 
	var new_reveal = river_tiles[revealed_river_tiles.size()]
	revealed_river_tiles.append(new_reveal)
	river_change.emit()
	
func create_river():
	for n in 5:
		var tile = draw_tile()
		river_tiles.append(tile)
	river_change.emit()
