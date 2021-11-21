extends Control

var collected_passwords = 0
var all_passwords = 0

var time = 0
var best_time = 105 # equals "01:45", tried it out

var points = 0

func _ready():
	collected_passwords = global.collected_passwords
	all_passwords = global.all_passwords
	time = global.time
#
#	collected_passwords = 5
#	time = 75
	
	$passwords/title/value.text = "0 of " + String(all_passwords)
	
	yield(get_tree().create_timer(1.0), "timeout")
	count_passwords_up(0)
	count_time_up(0)
	
	yield(get_tree().create_timer(1.5), "timeout")

	evaluate()
	count_points_up(0)
	
func evaluate():
	points = collected_passwords * 50
	print(points)
	
	var points_for_time = (best_time / time) * 1000
	print(points_for_time)
	
	points += points_for_time
	print(points)

func count_points_up(counted_points):
	while counted_points < points:
		counted_points += 1
		$final/title/value.text = String(counted_points) + " Points"
		count_passwords_up(counted_points)

func count_passwords_up(counted_passwords):
	while counted_passwords < collected_passwords:
		counted_passwords += 1
		$passwords/title/value.text = String(counted_passwords) + " of " + String(all_passwords)
		yield(get_tree().create_timer(0.05), "timeout")
		count_passwords_up(counted_passwords)

func count_time_up(counted_time):
	while counted_time < time:
		counted_time += 1
		
		var seconds = fmod(counted_time, 60)
		var mins = fmod(counted_time, 60*60) / 60
	
		var time_passed = "%02d:%02d Minutes" % [mins, seconds]
	
		$time/title/value.text = time_passed
		yield(get_tree().create_timer(0.01), "timeout")
		count_passwords_up(counted_time)
