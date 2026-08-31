class_name WbText extends Resource

## The text class used in the whole Framework. Reacts to the "language" variable
## set in the options autoload singleton.

@export var german: String
@export var english: String

func get_string() -> String:
	
	match Options.language:
		
		WbOptionEnums.Language.GERMAN:
			return german
		WbOptionEnums.Language.ENGLISH:
			return english
		_:
			return ""
	
