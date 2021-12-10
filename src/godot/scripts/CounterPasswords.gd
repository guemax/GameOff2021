extends Label

func _ready():
	reset_collected_passwords()
	set_text_passwords()

func reset_collected_passwords():
	global.collected_passwords = 0
	
func _on_password_collected():
	global.collected_passwords += 1	
	set_text_passwords()

func set_text_passwords():
	text = String(global.collected_passwords) + "/" + String(global.all_passwords)
