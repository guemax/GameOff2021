extends Label

var passwords = 0

func _ready():
	text = String(passwords)

func _on_password_collected():
	passwords += 1
	text = String(passwords)
