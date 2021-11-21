extends Spatial

func _on_End_body_entered(body):
	if body.name == "Bug":
		TransitionScreen.transition()
		yield(get_tree().create_timer(1.0), "timeout")
		get_tree().change_scene("res://scenes/evaluation.tscn")		
