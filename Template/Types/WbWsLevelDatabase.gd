class_name WbWsLevelDatabase extends Resource

## The adress of the starting Level. Beware of Typos!
@export var start_adress: String

## The actual levels the presentation contains
@export var levels: Array[WbWsLevelIdentity]

func get_level_id_by_adress(adress: String) -> WbWsLevelIdentity:
	
	for level_id in levels:
		
		if level_id.adress == adress:
			
			return level_id
		
		
	return null

func get_starting_level_id() -> WbWsLevelIdentity:
	
	return get_level_id_by_adress(start_adress)


func get_level_by_adress(adress: String) -> PackedScene:
	
	for level_id in levels:
		
		if level_id.adress == adress:
			
			return level_id.level
		
		
	return null

func get_starting_level() -> PackedScene:
	
	return get_level_by_adress(start_adress)
	
