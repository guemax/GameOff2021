extends Button

func _on_buttonplay_pressed():
	get_tree().change_scene("res://scenes/level1.tscn")


func _on_ButtonPlay_pressed_stop_music():
	main_menu_music.stop_music_from_playing()
