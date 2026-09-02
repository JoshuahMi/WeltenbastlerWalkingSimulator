class_name WbWsLevelDatabase extends Resource

## The adress of the starting Level. Beware of Typos!
@export var start_adress: String

## The actual levels the presentation contains
@export var levels: Dictionary[String, WbWsLevelIdentity]

func get_level_id_by_adress(adress: String) -> WbWsLevelIdentity:
	
	return levels.get(adress, levels.get(start_adress, null))
	

func get_starting_level_id() -> WbWsLevelIdentity:
	
	return get_level_id_by_adress(start_adress)


	
