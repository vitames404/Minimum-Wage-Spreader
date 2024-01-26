extends Node2D

var lifeLost = preload("res://Sprites/vida/vida2.png")

var life1
var life2
var life3

# Called when the node enters the scene tree for the first time.
func _ready():
	life1 = $Sprite2D
	life2 = $Sprite2D2
	life3 = $Sprite2D3

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.lifes <= 1:
		life3.texture = lifeLost
	if Global.lifes <= 2:
		life2.texture = lifeLost
	if Global.lifes == 0:
		life1.texture = lifeLost
