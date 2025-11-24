extends StaticBody2D

var direction = 0
var speed = 300
var screenSize = 540
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D


	
	

func _process(delta: float) -> void:
	

	#pretty self explanatory, we move up or down based on input
	if Input.is_action_pressed("move_down"):
		direction = 1
	elif Input.is_action_pressed("move_up"):
		direction = -1
	else:
		direction = 0
		
	position.y += direction * delta * speed
	position.y = clamp(position.y, 0, screenSize)
