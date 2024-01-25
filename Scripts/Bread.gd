extends Area2D

var drawing = false
var mouse_inside = false

var test

var pao

var count = 0

var bread_start_pos

	
func _ready():
	var bread = get_child(0)	
	if bread:
		bread_start_pos = bread.position - bread.shape.size / 2
		
		match Global.level:
			1:
				pao = Global.pao1
			2:
				pao = Global.pao2
			3:
				pao = Global.pao3
			4:
				pao = Global.pao4
			5:
				pao = Global.pao5
			6:
				pao = Global.pao6
			7:
				pao = Global.pao7
			8:
				pao = Global.pao8
			9:
				pao = Global.pao9
			10:
				pao = Global.pao10
				
		var gap = bread.shape.size / 10
		
		var size_x = (bread.shape.size.x - gap.x * 2) / (len(pao[1]) - 1)
		var size_y = (bread.shape.size.y - gap.y * 2) / (len(pao[1]) - 1)
		
		bread_start_pos += gap
		
		test = bread.position + bread.shape.size / 2
		
		var currentX = bread_start_pos.x
		var currentY = bread_start_pos.y 
		 
		for value in pao:
			currentX = bread_start_pos.x
			for value2 in value:
				Global.Bread.append({"position": Vector2(currentX, currentY), "completed": false, "color": value2})
				#print(currentX, currentY)
				currentX += size_x
			currentY += size_y
		
		#for point in Global.Bread:
			#print(point["color"])

func _draw():
	for entry in Global.drawingPoints:
		draw_rect(entry["position"], entry["color"], 1.0)
	
	if len(Global.Bread) > 0:
		for point in Global.Bread:
			draw_rect(Rect2(point["position"].x, point["position"].y, 5, 5), Color.RED , 1.0)
	#
	
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
		var entry = {"position": Rect2(local_pos.x - 15, local_pos.y - 15, 50, 50), "color": Global.whatColor}
		
		if entry not in Global.drawingPoints:
			Global.drawingPoints.append(entry)
			queue_redraw()

func _on_mouse_entered():
	mouse_inside = true

func _on_mouse_exited():
	mouse_inside = false
	drawing = false
