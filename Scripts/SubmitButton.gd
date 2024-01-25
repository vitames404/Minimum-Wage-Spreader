extends Area2D

@onready var customer = preload("res://Customer.tscn")

var correctBread

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
	
	match Global.level:
		1:	correctBread = 1
		2:  correctBread = 1
		3:  correctBread = 1
		4:  correctBread = 1
		5:  correctBread = 1
		6:  correctBread = 2
		7:  correctBread = 2
		8:  correctBread = 2
		9:  correctBread = 2
		10:  correctBread = 2
	
	if ganhou:
		if Global.whatBread == correctBread:
			print("Ganhou")
		else:
			Global.lifes -= 1
			if Global.lifes <= 0:
				print("Você perdeu")
	else:
		Global.lifes -= 1
		if Global.lifes <= 0:
			print("Você perdeu")
	
	Global.level += 1
	
	var main_scene = get_tree().get_root()
		
	var check_customer = main_scene.get_node_or_null("client")
	var bread = main_scene.get_node_or_null("bread")
	
	if(check_customer):
		print("Cliente EXCLUIDO")
		check_customer.free()
		
	var client = customer.instantiate()
	client.name = "client"
	main_scene.add_child(client)
	
	bread.free()
	Global.drawingPoints.clear()
	
	
	if Global.level == 10:
		print("Jogo terminado você zerou!")


