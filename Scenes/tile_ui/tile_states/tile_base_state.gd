extends TileState

func enter() -> void:
	if not tile_ui.is_node_ready():
		await tile_ui.ready
		
#Testing purposes
	tile_ui.reparent_requested.emit(tile_ui)
	tile_ui.color.color = Color.WEB_GREEN
	tile_ui.state.text = "BASE"
#Resets the pivot offset to make snapping easier
	tile_ui.pivot_offset = Vector2.ZERO
	
func on_gui_input(event: InputEvent) -> void:
	if event.is_action_pressed("left_mouse"):
		tile_ui.pivot_offset = tile_ui.get_global_mouse_position() - tile_ui.global_position
		transition_requested.emit(self, TileState.State.CLICKED)
