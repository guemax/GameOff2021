extends Button

func _on_buttonplay_pressed():
	get_tree().change_scene("res://scenes/level1.tscn")

func _on_ButtonPlay_pressed_stop_music():
	global.main_menu_opened = false
	main_menu_music.stop()
