extends Area2D

var drawing_points = []	
var drawing = false
var mouse_inside = false

var shape_size

func _ready():
	var bread = get_tree().get_root().get_child(0).get_node("Bread")
	
func _draw():
	for point in drawing_points:
		draw_rect(point, Color.GREEN, 1.0)

func _input(event):
	if event is InputEventMouseButton and mouse_inside:
		var local_pos = to_local(event.position)
		if mouse_inside:
			if event.pressed:
				drawing = true
				if local_pos not in drawing_points:
					drawing_points.append(Rect2(local_pos.x, local_pos.y, 30, 30))
			elif event.button_index == MOUSE_BUTTON_LEFT:
				drawing = false

func _process(delta):
	if drawing:
		var local_pos = to_local(get_viewport().get_mouse_position())
		if local_pos not in drawing_points:
			drawing_points.append(Rect2(local_pos.x, local_pos.y, 30, 30)) # 10, 10 é o tamanho do desenho
		queue_redraw()

func _on_mouse_entered():
	mouse_inside = true

func _on_mouse_exited():
	mouse_inside = false
	drawing = false
