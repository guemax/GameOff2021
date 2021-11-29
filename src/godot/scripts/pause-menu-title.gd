extends Label

var number_of_dots = 0
var dots = ""

func _ready():
	animate_text()

func animate_text():
	if number_of_dots == 3:
		number_of_dots = 0
	else:
		number_of_dots += 1
	
	dots = ""
	for i in range(1, number_of_dots + 1):
		dots += "."
	
	text = "Pausing" + dots
	
	yield(get_tree().create_timer(0.75), "timeout")
	animate_text()
