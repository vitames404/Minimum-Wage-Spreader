extends Sprite2D

var newTexture1 : Texture = preload("res://Sprites/paes/white_bread_1.png")
var newTexture2 : Texture = preload("res://Sprites/paes/integral_bread_1.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	if(Global.whatBread == 1):
		set_sprite_texture(newTexture1)
	else:
		set_sprite_texture(newTexture2)
	
func set_sprite_texture(texture: Texture) -> void:
	# Set the sprite's texture
	self.texture = texture

