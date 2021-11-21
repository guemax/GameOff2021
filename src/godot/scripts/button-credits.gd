extends Button

func _on_ButtonCredits_pressed():
	TransitionScreen.transition()
	yield(get_tree().create_timer(1), "timeout")
	get_tree().change_scene("res://scenes/credits.tscn")
