extends KinematicBody

export var speed := 2.0
export var gravity := 70
export var jump_impulse := 25

var velocity = Vector3.ZERO

onready var pivot = $pivot

# onready var _model: Spatial = $Armature001

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta: float) -> void:
	var move_direction := Vector3.ZERO
	
	move_direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	move_direction.z = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	move_direction.normalized()
		
	velocity.x = move_direction.x * (speed * 0.75)
	velocity.z = move_direction.z * speed
	
	# if BUG IS MOVING
	if move_direction != Vector3.ZERO:
		$AnimationPlayer.play("bug-walk-loop")		
	else:
		$AnimationPlayer.stop()
		$AnimationPlayer.play("bug-head-loop")
	
	velocity = move_and_slide(velocity, Vector3.UP)
