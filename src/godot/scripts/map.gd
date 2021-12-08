extends Control

var map_opened = true

func _ready():
	map_opened = true

func _input(event):
	if event.is_action_pressed("number_9") and map_opened:
		close_map()
	elif event.is_action_pressed("number_9") and not map_opened:
		open_map()

func open_map():
	visible = true
	map_opened = true

func close_map():
	visible = false
	map_opened = false
