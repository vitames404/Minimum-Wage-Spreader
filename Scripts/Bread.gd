extends Area2D

var drawing = false
var mouse_inside = false

var test

var count = 0

var bread_start_pos

	
func _ready():
	var bread = get_child(0)	
	if bread:
		bread_start_pos = bread.position - bread.shape.size / 2
		
		var gap = bread.shape.size / 10
		
		var size_x = (bread.shape.size.x - gap.x * 2) / 5
		var size_y = (bread.shape.size.y - gap.y * 2) / 5
		
		bread_start_pos += gap
		
		#print(size_x)
		#print(size_y)
		test = bread.position + bread.shape.size / 2
		
		print(test)
		
		var pao = Global.pao1
		
		var currentX = bread_start_pos.x
		var currentY = bread_start_pos.y 
		 
		for value in pao:
			currentX = bread_start_pos.x
			for value2 in value:
				Global.Bread.append({"position": Vector2(currentX, currentY), "completed": false, "color": value2})
				#print(currentX, currentY)
				currentX += size_x
			currentY += size_y
		
		for point in Global.Bread:
			print(point["color"])

func _draw():
	for entry in Global.drawingPoints:
		draw_rect(entry["position"], entry["color"], 1.0)
	
	if len(Global.Bread) > 0:
		for point in Global.Bread:
			draw_rect(Rect2(point["position"].x, point["position"].y, 5, 5), Color.RED , 1.0)
	
	
func _input(event):
	if event is InputEventMouseButton and mouse_inside and Global.whatColor != null:
		var local_pos = to_local(event.position)
		if mouse_inside:
			if event.pressed:
				drawing = true
			elif event.button_index == MOUSE_BUTTON_LEFT:
				drawing = false

func _process(delta):
	if drawing:
		var local_pos = to_local(get_viewport().get_mouse_position())
		var entry = {"position": Rect2(local_pos.x - 15, local_pos.y - 15, 100, 100), "color": Global.whatColor}
		
		if entry not in Global.drawingPoints:
			Global.drawingPoints.append(entry)
			queue_redraw()

func _on_mouse_entered():
	mouse_inside = true

func _on_mouse_exited():
	mouse_inside = false
	drawing = false
