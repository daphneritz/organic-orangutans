extends Line2D

@export var cycle_speed: float = 0.2
var hue: float = 0.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	hue = fmod(hue+delta*cycle_speed, 1.0)
	
	default_color = Color.from_hsv(hue, 1.0, 0.7)
