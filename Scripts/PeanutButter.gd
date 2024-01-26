extends Area2D

var knife = load("res://Sprites/faca/facapeanutbutter.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			Global.whatColor = Color.SANDY_BROWN
			Input.set_custom_mouse_cursor(knife)
