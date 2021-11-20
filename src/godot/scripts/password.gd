extends Area

func _on_password_body_entered(body):
	if body.name == "Bug":
		$Timer.start()

func _on_Timer_timeout():
	queue_free()
