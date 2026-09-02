class_name WbWsTeleportPoint extends Area3D

## A class with an Area3D that will emit a signal to teleport to a specific level
## at a specific point when the player enters it

@export var level_adress: String = "OuterWorld"
@export var spawn_point_adress: String = "Schlosstor"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	body_entered.connect(_on_body_entered)
	
	add_to_group("TeleportPoint")
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body):
	
	var game: WbWsGame = get_tree().get_first_node_in_group("Game") as WbWsGame
	
	game.load_level(level_adress, spawn_point_adress)
	
