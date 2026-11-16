extends Node2D
@onready var fade: ColorRect = $Area2D/Fade

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Gymnopedie.play_music(preload("res://assets/audio assets/Vibing Over Venus.mp3"))
	var tween:= create_tween()
	tween.tween_property(fade, "modulate:a", 0.0, 2.0)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
