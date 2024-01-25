extends Sprite2D

var pao1 : Texture = preload("res://Sprites/pedidos/pedido1 (2).png")
var pao2 : Texture = preload("res://Sprites/pedidos/pedido4.png")
var pao3 : Texture = preload("res://Sprites/pedidos/pedido5 (6).png")
var pao4 : Texture = preload("res://Sprites/pedidos/pedido5 (10).png")
var pao5 : Texture = preload("res://Sprites/pedidos/pedido81.png")
var pao6 : Texture = preload("res://Sprites/pedidos/pedido83.png")
var pao7 : Texture = preload("res://Sprites/pedidos/pedido89.png")
var pao8 : Texture = preload("res://Sprites/pedidos/pedido87.png")
var pao9 : Texture = preload("res://Sprites/pedidos/pedido6 (2).png")
var pao10 : Texture = preload("res://Sprites/pedidos/pedido6 (4).png")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	match Global.level:
		1:
			set_sprite_texture(pao1)
		2:
			set_sprite_texture(pao2)
		3:
			set_sprite_texture(pao3)
		4:
			set_sprite_texture(pao4)
		5:
			set_sprite_texture(pao5)
		6:
			set_sprite_texture(pao6)
		7:
			set_sprite_texture(pao7)
		8:
			set_sprite_texture(pao8)
		9:
			set_sprite_texture(pao9)
		10:
			set_sprite_texture(pao10)

func set_sprite_texture(texture: Texture) -> void:
	# Set the sprite's texture
	self.texture = texture
