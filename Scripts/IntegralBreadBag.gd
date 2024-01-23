extends Area2D

@onready var bread = preload("res://bread.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
				Global.whatBread = 2
		
				# Acessa a cena principal
				var main_scene = get_tree().get_root()
				
				var check_bread = main_scene.get_node_or_null("bread")
				if(check_bread):
					print("PAO EXCLUIDO")
					check_bread.free()
				
				# Instancia o novo objeto da cena do pão
				var current_bread = bread.instantiate()
				current_bread.name = "bread"
				print("you choose bread: 1")
				
				# Define a posição global do objeto com base na posição do mouse
				current_bread.global_position =  Vector2(1280,240)
				
				# Adiciona o novo objeto como filho da cena principal
				main_scene.add_child(current_bread)
			
				Global.drawingPoints.clear()
			
	
