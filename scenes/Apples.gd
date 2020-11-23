extends Node

export var garden_width: int = 600
export var garden_height: int = 600

var apple_template = preload("res://scenes/Apple.tscn")

signal quest_score_gain(points)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_Apple_apple_eaten():
	emit_signal("quest_score_gain", +1)
	
func generate_apples(n):
	for i in range(n):
		var a = apple_template.instance()
		a.name = str("Apple", i)
		var x = rand_range(0.1, 0.9) * garden_width
		var y = rand_range(0.1, 0.9) * garden_height
		a.connect("apple_eaten", self, "_on_Apple_apple_eaten")
		a.position = Vector2(x, y)
		self.add_child(a)
