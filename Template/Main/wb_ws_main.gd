class_name WbWsMain extends Node

## The main node. It controls the transition between the game and the main menu
## and loading saves

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("Main")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

## The function that initiates the game. Will instantiate the game node,
## which will instantiate the starting level and spawn the player.
func initiate_game():
	
	pass
