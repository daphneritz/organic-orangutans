extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Gymnopedie.play_music(preload("res://assets/audio assets/Gymnopedie No 1.mp3"))



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_map_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		get_tree().change_scene_to_file("res://scenes/dollhouse scene.tscn")
		pass
