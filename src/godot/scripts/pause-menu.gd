extends Control

func show_paus_menu():
	$AnimationPlayer.play("fade-in")

func _on_ButtonClose_pressed():
	$AnimationPlayer.play("fade-out")

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		show_paus_menu()
