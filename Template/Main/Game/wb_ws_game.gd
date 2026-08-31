class_name WbWsGame extends Node3D

## The game class that handles player and level spawning

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("Game")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

	
## This function will delete the current level and load and instantiate a new one.
## Will also detach the player from the current level and add them as a child to the new one.
func load_level():
	
	pass


## This function will spawn the player into the current level. 
func spawn_player():
	
	pass
