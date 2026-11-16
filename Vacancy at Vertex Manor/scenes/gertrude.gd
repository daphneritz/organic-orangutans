extends Area2D
@onready var sprite = $TransparentBgGurtrude

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.timeline_started.connect(sprite.hide)
	Dialogic.timeline_ended.connect(sprite.show)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("current timeline: ", Dialogic.current_timeline)
		print("layout node: ", Dialogic.Styles.get_layout_node())
		if Dialogic.current_timeline == null:
			if (Dialogic.VAR.gertrude.spoke>0):
				Dialogic.start("gert2")
			Dialogic.start("gertrude")
