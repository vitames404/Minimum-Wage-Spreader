extends Sprite2D

@onready var bread = preload("res://bread.tscn")

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
			Global.whatBread = 1
	
			# Acessa a cena principal
			var main_scene = get_tree().get_root()
			
			var check_bread = main_scene.get_node_or_null("bread")
			if(check_bread):
				print("PAO EXCLUIDO")
				check_bread.free()
			
			# Instancia o novo objeto da cena do pão
			var current_bread = white_bread.instantiate()
			current_bread.name = "bread"
			print("you choose bread: 1")
			
			# Define a posição global do objeto com base na posição do mouse
			current_bread.global_position =  Vector2(800,300)
			
			# Adiciona o novo objeto como filho da cena principal
			main_scene.add_child(current_bread)
			
			
