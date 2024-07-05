class_name TileUI
extends Control

signal reparent_requested(which_tile_ui: TileUI)

@onready var color: ColorRect = $Color
@onready var state: Label = $State
