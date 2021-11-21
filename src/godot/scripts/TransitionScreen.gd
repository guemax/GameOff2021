extends CanvasLayer

func transition():
	$AnimationPlayer.play("fade_to_black")

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "fade_to_black":
		yield(get_tree().create_timer(1.0), "timeout")
		$AnimationPlayer.play("fade_to_normal")
	else:
		print("Finished fading")
