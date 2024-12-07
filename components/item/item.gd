extends Area2D

const SPEED = 0.05

func _physics_process(delta: float) -> void:
	var mousePos: Vector2 = get_global_mouse_position()
	var velocityVector: Vector2 = mousePos - global_position
	translate(velocityVector * SPEED)
