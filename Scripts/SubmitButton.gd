extends Area2D

@onready var customer = preload("res://Customer.tscn")

var main_scene

var count = 0

var correctBread

var knife = load("res://Sprites/faca/faca.png")

func _ready():
	main_scene = get_tree().get_root()

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			Input.set_custom_mouse_cursor(knife)
			check_win()
			
func check_win():
	# Ver se os pontos do bread estao dentro dos retangulos do drawingPosition
	for point in Global.Bread:
		for drawnPoint in Global.drawingPoints:
			if(drawnPoint["position"].has_point(point["position"])):
				if(point["color"] == 1):
					if(drawnPoint["color"] == Color(0.77, 0.61, 0.30, 1)):
						point["completed"] = true
				if(point["color"] == 2):
					if(drawnPoint["color"] == Color(0.81, 0.30, 0.45, 1)):
						point["completed"] = true
				if(point["color"] == 3):
					if(drawnPoint["color"] == Color(0.93, 0.91, 0.75, 1)):
						point["completed"] = true	
				if(point["color"] == 4):
					if(drawnPoint["color"] == Color(1, 0.88, 0.57, 1)):
						point["completed"] = true	
				if(point["color"] == 5):
					if(drawnPoint["color"] == Color(0.93, 0.14, 0.16, 1)):
						point["completed"] = true	
	
	var ganhou = true
	
	#for point in Global.Bread:
		#if point["completed"] != true:
			#ganhou = false
			
	for point in Global.Bread:
		if point["completed"] == true:
			count += 1
	
	match Global.level:
		1:	correctBread = 1
		2:  correctBread = 1
		3:  correctBread = 2
		4:  correctBread = 2
		5:  correctBread = 1
		6:  correctBread = 2
		7:  correctBread = 1
		8:  correctBread = 2
		9:  correctBread = 1
		10:  correctBread = 2
	
	print(count)
	print(len(Global.Bread))
	
	if count <= (0.6 * len(Global.Bread)):
		ganhou = false
	
	if ganhou:
		if Global.whatBread == correctBread:
			print("Ganhou")
		else:
			Global.lifes -= 1
			print("Você perdeu uma vida")
			if Global.lifes == 0:
				get_tree().change_scene_to_file("res://GameOver.tscn")
	else:
		Global.lifes -= 1
		print("Você perdeu uma vida")
		if Global.lifes == 0:
			get_tree().change_scene_to_file("res://GameOver.tscn")
	
	Global.level += 1
	
	var check_customer = main_scene.get_node_or_null("client")	
	var bread = main_scene.get_node_or_null("bread")
	
	if(check_customer):
		check_customer.free()
		
	var client = customer.instantiate()
	client.name = "client"
	main_scene.add_child(client)
	
	Global.whatKnife = 1
	count = 0
	
	if bread:
		bread.free()
	Global.drawingPoints.clear()
	Global.Bread.clear()
	
	if Global.level > 10:
		get_tree().change_scene_to_file("res://win.tscn")

