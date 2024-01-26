extends Area2D

var knife = load("res://Sprites/faca/facamorango.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			Global.whatColor = Color(0.81, 0.30, 0.45, 1)
			Global.whatKnife = 3
