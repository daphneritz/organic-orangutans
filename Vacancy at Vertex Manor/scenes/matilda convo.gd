extends Area2D

@onready var matsprite = $TransparentBgMatilda

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.timeline_started.connect(matsprite.hide)
	Dialogic.timeline_ended.connect(matsprite.show)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if Dialogic.current_timeline == null:
			if Dialogic.VAR.matilda.reporter_reveal: 
				Dialogic.start("matilda no")
			elif (Dialogic.VAR.matilda.spoke): 
				Dialogic.start_timeline("mat2")
			else:
				Dialogic.start("matilda convo")
