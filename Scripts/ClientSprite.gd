extends Sprite2D

var cliente1 : Texture = preload("res://Sprites/cliente/cliente1.png")
var cliente2 : Texture = preload("res://Sprites/cliente/cliente2.png")
var cliente3 : Texture = preload("res://Sprites/cliente/cliente3.png")
var cliente4 : Texture = preload("res://Sprites/cliente/cliente4.png")
var cliente5 : Texture = preload("res://Sprites/cliente/cliente5.png")
var cliente6 : Texture = preload("res://Sprites/cliente/cliente6.png")
var cliente7 : Texture = preload("res://Sprites/cliente/cliente7.png")
var cliente8 : Texture = preload("res://Sprites/cliente/cliente8.png")
var cliente9 : Texture = preload("res://Sprites/cliente/cliente9.png")
var cliente10 : Texture = preload("res://Sprites/cliente/cliente10.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	match Global.level:
		1:
			set_sprite_texture(cliente1)
		2:
			set_sprite_texture(cliente2)
		3:
			set_sprite_texture(cliente3)
		4:
			set_sprite_texture(cliente4)
		5:
			set_sprite_texture(cliente5)
		6:
			set_sprite_texture(cliente6)
		7:
			set_sprite_texture(cliente7)
		8:
			set_sprite_texture(cliente8)
		9:
			set_sprite_texture(cliente9)
		10:
			set_sprite_texture(cliente10)
	
func set_sprite_texture(texture: Texture) -> void:
	# Set the sprite's texture
	self.texture = texture
