extends TileState

func enter() -> void:
	var ui_layer := get_tree().get_first_node_in_group("ui_layer")
	if ui_layer:
		tile_ui.reparent(ui_layer)
		
	#Testing purposes
	tile_ui.color.color = Color.BLUE
	tile_ui.state.text = "DRAGGING"
	
func on_input(event: InputEvent) -> void:
	var mouse_motion := event is InputEventMouseMotion
	var cancel = event.is_action_pressed("right_mouse")
	var confirm = event.is_action_pressed("left_mouse")
	
	if mouse_motion:
		tile_ui.global_position = tile_ui.get_global_mouse_position() - tile_ui.pivot_offset
	
	if cancel:
		transition_requested.emit(self, TileState.State.BASE)
	elif confirm:
		get_viewport().set_input_as_handled()
		transition_requested.emit(self, TileState.State.RELEASED)
