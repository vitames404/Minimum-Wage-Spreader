extends Area2D

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			check_win()
			
			
func check_win():
	# Ver se os pontos do bread estao dentro dos retangulos do drawingPosition
	for point in Global.Bread:
		for drawnPoint in Global.drawingPoints:
			if(drawnPoint["position"].has_point(point["position"])):
				if(point["color"] == 1):
					if(drawnPoint["color"] == Color.SANDY_BROWN):
						point["completed"] = true
				if(point["color"] == 2):
					if(drawnPoint["color"] == Color.MEDIUM_VIOLET_RED):
						point["completed"] = true	
	
	var ganhou = true
	for point in Global.Bread:
		if point["completed"] != true:
			ganhou = false
	
	if ganhou:
		print("alegria")
	


