extends CharacterBody2D


var speed = 300.0
var directionX = -1
var directionY = 0
@onready var player_paddle: StaticBody2D = $"../PlayerPaddle"



func _physics_process(delta: float) -> void:
	

	# this will start the ball going to the left side of the screen
	move_ball(delta)
	
	# this returns some info about the object the ball collides with but I don't understand it fully yet
	var collisionInfo = move_and_collide(velocity * delta)
	
	# check to see if a collision occurred
	if collisionInfo:
		# get the object the ball collided with in Object form
		var collider = collisionInfo.get_collider()
		# get the name of the object
		var colliderName = collider.name
		print(colliderName)
		
		# if the object is named PlayerPaddle, the ball moves to the right
		if colliderName == "PlayerPaddle":
			randomize_speed()
			directionY = randf_range(-1,1)
			directionY = directionY * -1
			directionX = 1
			move_ball(delta)
		# if the ball hits one of the borders, change y direction to the opposite direction
		elif colliderName == "Border":
			randomize_speed()
			directionY = directionY * -1
			move_ball(delta)
		# if not, the ball moves to the left
		else: 
			
			randomize_speed()
			directionY = randf_range(-1,1)
			directionY = directionY * -1
			directionX = -1
			move_ball(delta)


func move_ball(delta):
	position.x += directionX * speed * delta
	position.y += directionY * speed * delta
	
	

func randomize_speed():
	speed = randf_range(300, 500)
	print(speed)
	
