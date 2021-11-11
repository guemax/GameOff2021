extends KinematicBody

export var speed := 1.5
export var gravity := 70
export var jump_impulse := 25

var lerp_spin_speed = 0.09
var spin = 0.10  # rotation speed
var velocity = Vector3.ZERO
var is_rotating = false

onready var state_machine = $AnimationTree.get("parameters/playback")
onready var pivot = $pivot

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta: float) -> void:
	velocity = Vector3()
	is_rotating = false
	
	if Input.is_action_pressed("ui_down"):
		velocity += -transform.basis.x * speed
	elif Input.is_action_pressed("ui_up"):
		velocity += transform.basis.x * speed
	
	# Handles rotating the bug when pressing left or right arrow key	
	if Input.is_action_pressed("ui_left") and Input.is_action_pressed("ui_down"):
		rotate_y(-lerp(0, spin, lerp_spin_speed))
		is_rotating = true
	elif Input.is_action_pressed("ui_left"):
		rotate_y(lerp(0, spin, lerp_spin_speed))
		is_rotating = true
	elif Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_down"):
		rotate_y(lerp(0, spin, lerp_spin_speed))
		is_rotating = true
	elif Input.is_action_pressed("ui_right"):
		rotate_y(-lerp(0, spin, lerp_spin_speed))
		is_rotating = true
	
	# if BUG IS MOVING OR ROTATING
	if velocity != Vector3.ZERO or is_rotating:
		state_machine.travel("bug-walk-loop")	
	else:
		state_machine.travel("bug-head-loop")
	
	velocity = move_and_slide(velocity, Vector3.UP)
