class_name WbWsTeleportPoint extends Area3D

## A class with an Area3D that will emit a signal to teleport to a specific level
## at a specific point when the player enters it

@export var level_adress: String = "Außenwelt"
@export var spawn_point_adress: String = "Schlosstor"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	add_to_group("TeleportPoint")
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
