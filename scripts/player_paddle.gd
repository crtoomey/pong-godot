extends StaticBody2D

var direction = 0
var speed = 300

	
	

func _process(delta: float) -> void:
	
	
	if Input.is_action_pressed("move_down"):
		direction = 1
	elif Input.is_action_pressed("move_up"):
		direction = -1
	else:
		direction = 0
		
	position.y += direction * delta * speed
