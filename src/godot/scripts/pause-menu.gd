extends Control

var pause_menu_opened = false

func show_paus_menu():
	$AnimationPlayer.play("fade-in")
	pause_menu_opened = true

func _on_ButtonClose_pressed():
	$AnimationPlayer.play("fade-out")
	pause_menu_opened = false
	

func _input(event):
	if event.is_action_pressed("ui_cancel") and not pause_menu_opened:
		show_paus_menu()
	elif event.is_action_pressed("ui_cancel") and pause_menu_opened:
		$AnimationPlayer.play("fade-out")
		pause_menu_opened = false
