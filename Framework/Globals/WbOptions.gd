extends Node

## A class for being an autoload singleton. this is the single source of truth
## for Wb Text, sound and music volume, resolution etc.

# LANGUAGE
var language: WbOptionEnums.Language = WbOptionEnums.Language.GERMAN

# SOUND
var master_volume: float = 1.0

var sfx_volume: float = 1.0
var music_volume: float = 1.0
var speech_volume: float = 1.0




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
