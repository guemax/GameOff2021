extends Label

var number_of_dots = 0
var animation_running = false
var dots = ""

func _process(_delta):
	if global.pause_menu_opened and not animation_running:
		animation_running = true
		animate_text()
	elif animation_running and not global.pause_menu_opened:
		animation_running = false
		reset_animation_values()

func reset_animation_values():
	number_of_dots = 0

func animate_text():
	if not animation_running:
		return
	
	if number_of_dots == 3:
		number_of_dots = 0
	else:
		number_of_dots += 1
	
	dots = ""
	for _i in range(1, number_of_dots + 1):
		dots += "."
	
	text = "Pausing" + dots
	
	yield(get_tree().create_timer(1.0), "timeout")
	animate_text()
