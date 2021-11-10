extends KinematicBody

export var speed := 1.5
export var gravity := 70
export var jump_impulse := 25

var spin_speed = 0.1
var spin = 0.15  # rotation speed
var velocity = Vector3.ZERO

onready var state_machine = $AnimationTree.get("parameters/playback")
onready var pivot = $pivot

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta: float) -> void:
	velocity = Vector3()
	
	if Input.is_action_pressed("ui_down"):
		velocity += -transform.basis.x * speed
	elif Input.is_action_pressed("ui_up"):
		velocity += transform.basis.x * speed
	
	# if BUG IS MOVING
	if velocity != Vector3.ZERO:
		state_machine.travel("bug-walk-loop")	
	else:
		state_machine.travel("bug-head-loop")
	
	velocity = move_and_slide(velocity, Vector3.UP)

func _unhandled_input(event):
	# Handles rotating the bug when pressing left or right arrow key
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_LEFT:
			rotate_y(lerp(0, spin, spin_speed))
		if event.pressed and event.scancode == KEY_RIGHT:
			rotate_y(-lerp(0, spin, spin_speed))	
