extends Label

var passwords = 0
var all_passwords = 0

func set_text_passwords():
	text = String(passwords) + "/" + String(all_passwords)

func _ready():
	all_passwords = global.all_passwords
	set_text_passwords()

func _on_password_collected():
	passwords += 1
	set_text_passwords()
	global.collected_passwords += 1
