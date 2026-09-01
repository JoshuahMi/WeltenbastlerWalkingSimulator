class_name WbWsLevelIdentity extends Resource

## A class for pairing a level with it's adress

@export var adress: String
@export var level: PackedScene
@export var default_spawn_point: Vector3

@export var spawn_points: Array[WbWsSpawnPoint]


## TODO: Will return a specific spawn point by taking its adress.
## Will return the identity transform if nothing is found.
func get_spawn_point_by_adress(adress: String) -> Transform3D:
	
	
	return Transform3D.IDENTITY
