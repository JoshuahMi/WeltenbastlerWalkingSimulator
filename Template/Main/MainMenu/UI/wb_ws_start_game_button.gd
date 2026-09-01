extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pressed.connect(_on_pressed)
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pressed():
	
	#print_debug("Pressed!")
	
	var main := get_tree().get_first_node_in_group("Main") as WbWsMain
	
	main.initiate_game()
	
	pass
