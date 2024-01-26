extends Area2D

var knife = load("res://Sprites/faca/facamayo.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			Global.whatColor = Color(0.93, 0.91, 0.75, 1)
			Global.whatKnife = 4
