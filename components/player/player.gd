extends CharacterBody2D


const SPEED = 400.0
const ACCEL = 30

func _physics_process(delta: float) -> void:
	var input: Vector2
	input.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	input = input.normalized()
	
	velocity = lerp(velocity, input * SPEED, delta * ACCEL)

	move_and_slide()
