extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		var tween := create_tween()
		tween.tween_property($Fade, "modulate:a", 1.0, 0.8)
		tween.tween_callback(get_tree().change_scene_to_file.bind("res://scenes/parlor room.tscn"))
		
