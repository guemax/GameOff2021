extends Spatial

func _on_End_body_entered(body):
	if body.name == "Bug":
		get_tree().change_scene("res://scenes/evaluation.tscn")
