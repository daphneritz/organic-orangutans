extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Gymnopedie.play_music(preload("res://assets/audio assets/Vibing Over Venus.mp3"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
