class_name TileUI
extends Control

signal reparent_requested(which_tile_ui: TileUI)

@onready var color: ColorRect = $Color
@onready var state: Label = $State
@onready var drop_point_detector = $DropPointDetector
@onready var tile_state_machine: TileStateMachine = $TileStateMachine as TileStateMachine
@onready var targets: Array[Node] = []

func _ready():
	tile_state_machine.init(self)
	
func _input(event: InputEvent) -> void:
	tile_state_machine.on_input(event)
	
func _on_gui_input(event: InputEvent) -> void:
	tile_state_machine.on_gui_input(event)
	
func _on_mouse_entered() -> void:
	tile_state_machine.on_mouse_entered()
	
func _on_mouse_exited() -> void:
	tile_state_machine.on_mouse_exited()

func _on_drop_point_detector_area_entered(area):
	if not targets.has(area):
		targets.append(area)

func _on_drop_point_detector_area_exited(area):
	targets.erase(area)
