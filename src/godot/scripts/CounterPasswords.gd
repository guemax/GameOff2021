extends Label

func _ready():
	set_text_passwords()

func _on_password_collected():
	global.collected_passwords += 1	
	set_text_passwords()

func set_text_passwords():
	text = String(global.collected_passwords) + "/" + String(global.all_passwords)
