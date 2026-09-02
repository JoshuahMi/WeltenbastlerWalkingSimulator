class_name WbWsLevelIdentity extends Resource

## A class for pairing a level with its adress

#@export var adress: String
@export var level: PackedScene
@export var default_spawn_point: Vector3

@export var spawn_points: Dictionary[String, WbWsSpawnPoint]


## Will return a specific spawn point by taking its adress.
func get_spawn_point_by_adress(adress: String) -> WbWsSpawnPoint:
	
	return spawn_points.get(adress, WbWsSpawnPoint.new())
