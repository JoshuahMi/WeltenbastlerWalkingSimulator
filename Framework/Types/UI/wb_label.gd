class_name WbLabel extends Label

## A label class which's text is set by setting its Wb Text resource.
## The Wb Text automatically reacts to the set language option.

@export var wb_text: WbText:
	set(new_value):
		text = new_value.get_string()
		wb_text = new_value

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	text = wb_text.get_string()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
