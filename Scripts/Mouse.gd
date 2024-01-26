extends Sprite2D

var knife

var knifeClean = load("res://Sprites/faca/faca.png")
var knifePB = load("res://Sprites/faca/facapeanutbutter.png")
var knifeStw = load("res://Sprites/faca/facamorango.png")
var knifeMayo = load("res://Sprites/faca/facamayo.png")
var knifeButter = load("res://Sprites/faca/facabutter.png")
var knifeKetchup = load("res://Sprites/faca/facaketchup.png")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	knife = self
	knife.position = get_global_mouse_position() - Vector2(-80, -100)
	
	match Global.whatKnife:
		1: knife.texture = knifeClean
		2: knife.texture = knifePB
		3: knife.texture = knifeStw
		4: knife.texture = knifeMayo
		5: knife.texture = knifeButter
		6: knife.texture = knifeKetchup
