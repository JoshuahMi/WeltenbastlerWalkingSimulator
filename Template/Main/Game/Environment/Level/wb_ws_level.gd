class_name WbWsLevel extends Node3D

## Parent class for all Weltenbastler-Levels

## This signal will notify the game node that the player wants to teleport into a new level,
## because he activated a teleport point.
signal teleport

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("Level")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
