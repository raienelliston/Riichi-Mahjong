class_name Tile
extends Resource

enum Type {suit, dragon, wind}
enum Suit {manzu, pinzu, souzu, none}
enum Wind {East, North, South, West, none}
enum Dragon {Green, Red, White, none}

@export_group("Tile Attributes")
@export var id: String
@export var type: Type
@export var value: int
@export var suit: Suit
@export var wind: Wind
@export var dragon: Dragon
