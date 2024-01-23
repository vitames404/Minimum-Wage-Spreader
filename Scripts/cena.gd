extends Node2D

var whatBread
var whatColor

var sprite : Sprite2D
var drawn_texture : ImageTexture

var Bread = []

var drawingPoints = []

#SANDY.BROWN = 1
#MEDIUM_VIOLET_RED = 2

var pao1 = [[1, 1, 1, 1, 1, 1],
			[1, 1, 1, 1, 1, 1],
			[1, 1, 1, 1, 1, 1],
			[1, 1, 1, 1, 1, 1],
			[1, 1, 1, 1, 1, 1],
			[1, 1, 1, 1, 1, 1]]
			
var pao2 = [[1, 1, 1, 1, 1, 1],
			[1, 1, 1, 1, 1, 1],
			[1, 1, 1, 1, 1, 1],
			[2, 2, 2, 1, 1, 1],
			[2, 2, 2, 1, 1, 1],
			[2, 2, 2, 1, 1, 1]]
			
			
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
