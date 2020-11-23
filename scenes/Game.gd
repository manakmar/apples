extends Node2D

signal score_changed(total_score)

var total_score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	# Remove prototype-apples
	for i in range(0, $Apples.get_child_count()):
		$Apples.get_child(i).queue_free()
	
	$Apples.generate_apples(10)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Apples_quest_score_gain(points):
	total_score += points
	emit_signal("score_changed", total_score)
