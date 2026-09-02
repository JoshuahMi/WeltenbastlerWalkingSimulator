class_name WbWsGame extends Node3D

## The game class that handles player and level spawning


## These are the levels the Designer defined
var levels: WbWsLevelDatabase = preload("res://Presentation/Database/LevelDatabase.tres")

@export var player_scene: PackedScene




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("Game")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func load_starting_level():
	
	# first, wipe all
	
	wipe_world()
	
	# Then instantiate the starting level scene
	
	var starting_level_scene = levels.get_starting_level()
	
	var starting_level = starting_level_scene.instantiate()
	
	add_child(starting_level)
	
	spawn_player(levels.get_starting_level_id().default_spawn_point)

	
## This function will delete the current level and load and instantiate a new one.
## Will also detach the player from the current level and add them as a child to the new one.
func load_level(adress: String, spawn_point: String = ""):
	
	
	wipe_world()
	
	# Then instantiate the level scene
	
	var level_id: WbWsLevelIdentity = levels.get_level_id_by_adress(adress)
	
	var level_scene = level_id.level
	
	var level = level_scene.instantiate()
	
	add_child(level)
	
	spawn_player(levels.get_starting_level_id().default_spawn_point)


## Will delete the player and the game world
func wipe_world():
	
	var player = get_tree().get_first_node_in_group("Player")
	
	if is_instance_valid(player):
		player.queue_free()
	
	var level = get_tree().get_first_node_in_group("Level")
	
	if is_instance_valid(level):
		level.queue_free()
	





## This function will spawn the player into the current level. 
func spawn_player(spawn_point: Vector3):
	
	# First delete the player
	
	var players: = get_tree().get_nodes_in_group("Player")
	
	for player in players:
		player.queue_free()
	
	
	# Then spawn them
	
	var player := player_scene.instantiate()
	
	player.visible = false
	
	add_child(player)
	
	player.global_position = spawn_point
	
	player.visible = true
	
	pass
