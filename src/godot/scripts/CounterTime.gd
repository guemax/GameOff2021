extends Label

var time = 0

func _ready():
	global.timer_on = true

func _process(delta):
	if (global.timer_on):
		time += delta
	
	var seconds = fmod(time, 60)
	var mins = fmod(time, 60*60) / 60
	
	var time_passed = "%02d:%02d" % [mins, seconds]
	text = time_passed

func _on_Area_body_entered(body):
	if body.name == "Bug":
		global.timer_on = false
		global.time = time
