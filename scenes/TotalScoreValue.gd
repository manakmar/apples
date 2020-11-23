extends Label

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Game_score_changed(total_score):
	text = str(total_score)
