extends Control

var pause_menu_opened = false

func show_paus_menu():
	$AnimationPlayer.play("fade-in")
	pause_menu_opened = true
	global.timer_on = false

func hide_pause_menu():
	$AnimationPlayer.play("fade-out")
	pause_menu_opened = false
	global.timer_on = true

func _on_ButtonClose_pressed():
	hide_pause_menu()

func _input(event):
	if event.is_action_pressed("ui_cancel") and not pause_menu_opened:
		show_paus_menu()
	elif event.is_action_pressed("ui_cancel") and pause_menu_opened:
		hide_pause_menu()
