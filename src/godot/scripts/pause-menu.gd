extends Control

func show_pause_menu():
	$AnimationPlayer.play("fade-in")
	global.pause_menu_opened = true
	global.timer_on = false

func hide_pause_menu():
	$AnimationPlayer.play("fade-out")
	global.pause_menu_opened = false
	global.timer_on = true

func _on_ButtonClose_pressed():
	hide_pause_menu()

func _input(event):
	if event.is_action_pressed("ui_cancel") and not global.pause_menu_opened:
		show_pause_menu()
	elif event.is_action_pressed("ui_cancel") and global.pause_menu_opened:
		hide_pause_menu()
