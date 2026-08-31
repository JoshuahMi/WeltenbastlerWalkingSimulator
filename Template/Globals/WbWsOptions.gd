class_name WbWsOptions extends Node

## A class for being an autoload singleton. this is the single source of truth
## for Wb Text, sound and music volume, resolution etc.


@export_category("Sound")
@export var sfx_volume: float
@export var music_volume: float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
