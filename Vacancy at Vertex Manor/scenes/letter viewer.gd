extends CanvasLayer

var current := 0

@onready var pages: Array[Node] = $Pages.get_children()
@onready var dim: ColorRect = $dim

func _ready() -> void:
	dim.gui_input.connect(_on_dim_gui_input)

func open() -> void:
	show()
	_show_page(0)

func close() -> void:
	hide()

func _show_page(index: int) -> void:
	current = index
	for i in pages.size():
		pages[i].visible = (i == current)

func _on_dim_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if current < pages.size() - 1:
				_show_page(current + 1)
			else:
				var tween := create_tween()
				tween.tween_property($Fade, "modulate:a", 1.0, 0.8)
				tween.tween_callback(get_tree().change_scene_to_file.bind("res://outside.tscn"))
		elif event.button_index == MOUSE_BUTTON_RIGHT:
			if current > 0:
				_show_page(current - 1)
