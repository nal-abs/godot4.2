extends Control

var condition = false
var image 
# Called when the node enters the scene tree for the first time.
func _ready():
	if condition:
		image = load("res://sprite.webp")
	else:
		image = load("res://sprite.png")


