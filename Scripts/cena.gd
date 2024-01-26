extends Node2D

@onready var customer = preload("res://Customer.tscn")
@onready var lifesScene = preload("res://life.tscn")

var whatBread 
var whatColor
var level = 1

var score = 10

var lifes = 3

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
			[2, 2, 1, 1, 1, 1],
			[2, 2, 2, 1, 1, 1],
			[2, 2, 2, 2, 2, 1],
			[2, 2, 2, 2, 2, 2]]
			
var pao3 = [[4, 4, 4, 3, 3, 3],
			[4, 4, 4, 3, 3, 3],
			[4, 4, 4, 3, 3, 3],
			[4, 4, 4, 3, 3, 3],
			[4, 4, 4, 3, 3, 3],
			[4, 4, 4, 3, 3, 3]]

var pao4 = [[5, 5, 5, 3, 3, 3],
			[5, 5, 5, 3, 3, 3],
			[5, 5, 5, 3, 3, 3],
			[5, 5, 5, 3, 3, 3],
			[5, 5, 5, 3, 3, 3],
			[5, 5, 5, 3, 3, 3]]

var pao5 = [[4, 4, 4, 4, 4, 4],
			[4, 4, 4, 4, 4, 4],
			[2, 2, 2, 2, 2, 2],
			[2, 2, 2, 2, 2, 2],
			[4, 4, 4, 4, 4, 4],
			[4, 4, 4, 4, 4, 4]]

var pao6 = [[3, 3, 3, 3, 3, 3],
			[3, 3, 3, 3, 3, 3],
			[2, 2, 2, 2, 2, 2],
			[2, 2, 2, 2, 2, 2],
			[3, 3, 3, 3, 3, 3],
			[3, 3, 3, 3, 3, 3]]

var pao7 = [[5, 5, 5, 5, 5, 5],
			[5, 5, 5, 5, 5, 5],
			[2, 2, 2, 2, 2, 2],
			[2, 2, 2, 2, 2, 2],
			[5, 5, 5, 5, 5, 5],
			[5, 5, 5, 5, 5, 5]]
			
var pao8 = [[4, 4, 4, 4, 4, 4],
			[4, 4, 4, 4, 4, 4],
			[5, 5, 5, 5, 5, 5],
			[5, 5, 5, 5, 5, 5],
			[4, 4, 4, 4, 4, 4],
			[4, 4, 4, 4, 4, 4]]

var pao9 = [[4, 4, 4, 4, 4, 4, 4],
			[4, 4, 4, 4, 4, 4, 4],
			[4, 4, 4, 4, 4, 4, 4],
			[4, 2, 4, 2, 4, 2, 4],
			[2, 2, 2, 2, 2, 2, 2],
			[2, 2, 2, 2, 2, 2, 2],
			[2, 2, 2, 2, 2, 2, 2]]

var pao10 = [[3, 3, 3, 3, 3, 3, 3],
			[3, 3, 3, 3, 3, 3, 3],
			[3, 3, 3, 3, 3, 3, 3],
			[3, 2, 3, 2, 3, 2, 3],
			[2, 2, 2, 2, 2, 2, 2],
			[2, 2, 2, 2, 2, 2, 2],
			[2, 2, 2, 2, 2, 2, 2]]

			
# Called when the node enters the scene tree for the first time.
func _ready():
	var main_scene = self
	var client = customer.instantiate()
	client.name = "client"
	main_scene.add_child(client)

	var vidaScene = lifesScene.instantiate()
	main_scene.add_child(vidaScene)
