@abstract
class_name WbWsIwo extends Node3D

## IWO stands for "Important World Object", an object that has Information the
## HUD can display in the Info Box, optional interactability

## The information about this IWO, to be displayed by the HUD in the info box.
@export var info: WbText

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("Iwo")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

@abstract
func interact()


@abstract
func get_info()
