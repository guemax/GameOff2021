extends Control

var collected_passwords = 0
var all_passwords = 0

var time = 0
var best_time = 250 # equals "04:17", enough time to collect passwords

var points = 0

func _ready():
	# Read data from global script
	collected_passwords = global.collected_passwords
	all_passwords = global.all_passwords
	time = global.time

	# For debugging purposes
#	collected_passwords = 10
#	time = 200
	
	# Set max number of passwords
	$passwords/title/value.text = "0 of " + String(all_passwords)
	
	yield(get_tree().create_timer(1.0), "timeout")
	count_passwords_up(0)
	count_time_up(0)
	
	yield(get_tree().create_timer(time * 0.02 + 0.5), "timeout")

	evaluate()
	$final/title/value.text = String(points) + " Points"
	
func evaluate():
	# Compute the final points gained
	points = collected_passwords * 100
	if time == 0:
		pass
	else:
		points += (best_time * 1.25 / time) * 1000
		points = round(points)	# I don't want the points to have a decimal point

func count_passwords_up(counted_passwords):
	# Count the collected passwords up using recursion
	if counted_passwords < collected_passwords:
		counted_passwords += 1
		$passwords/title/value.text = String(counted_passwords) + " of " + String(all_passwords)
		yield(get_tree().create_timer(0.05), "timeout")
		count_passwords_up(counted_passwords)

func count_time_up(counted_time):
	# Count the time up using recursion
	if counted_time < time:
		counted_time += 1
		
		var seconds = fmod(counted_time, 60)
		var mins = fmod(counted_time, 60*60) / 60
	
		var time_passed = "%02d:%02d Minutes" % [mins, seconds]
	
		$time/title/value.text = time_passed
		yield(get_tree().create_timer(0.01), "timeout")
		count_time_up(counted_time)
