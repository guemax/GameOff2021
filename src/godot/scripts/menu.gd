extends Control

func _ready():
	if not global.main_menu_opened:
		global.main_menu_opened = true
		main_menu_music.play()
