extends Area

signal coin_collected

func _on_password_body_entered(body):
	if body.name == "Bug":
		$AnimationPlayer.play("shrink")
		$Timer.start()

func _on_Timer_timeout():
	emit_signal("coin_collected")
	queue_free()
