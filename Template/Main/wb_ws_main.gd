class_name WbWsMain extends Node

## The main node. It controls the transition between the game and the main menu
## and loading saves

@export var main_menu_scene: PackedScene
@export var game_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("Main")
	
	initiate_main_menu()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


## Will instantiate the main menu scene and display it on the screen. 
## Will also destroy the game world.
func initiate_main_menu():
	
	# First, destroy all children of the main node
	
	wipe_tree()
		
	# then instantiate the main menu scene
	
	if is_instance_valid(main_menu_scene):
		
		var main_menu = main_menu_scene.instantiate()
		
		add_child(main_menu)
		
	
	pass


## The function that initiates the game. Will instantiate the game node,
## which will instantiate the starting level and spawn the player.
func initiate_game():
	
	wipe_tree()
	
	if is_instance_valid(game_scene):
		
		var game = game_scene.instantiate()
		
		add_child(game)
		
		game.load_starting_level()
	
	
	
	
	
	
	pass

## Destroys all children of the main node
func wipe_tree():
	
	# destroy all children of the main node
	
	var world = get_children()
	
	for node in world:
		node.queue_free()
