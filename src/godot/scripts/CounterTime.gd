extends Label

func _ready():
	global.timer_on = true

func _process(delta):
	if (global.timer_on):
		global.time += delta
	
	var seconds = fmod(global.time, 60)
	var mins = fmod(global.time, 60*60) / 60
	
	# Format is 00:00
	var time_passed = "%02d:%02d" % [mins, seconds]
	text = time_passed

func _on_Area_body_entered(body):
	if body.name == "Bug":
		global.timer_on = false
