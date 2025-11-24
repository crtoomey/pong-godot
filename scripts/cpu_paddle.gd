extends StaticBody2D

var direction = 0
var speed = 300
var screenSize = 540
var isBallInside = false
@onready var ball: CharacterBody2D = $"../Ball"


	

func _physics_process(delta: float) -> void:
	# isBallInside checks to see if the ball is on the CPU's side of the game arena
	# if it is on that side of the court we use the move_toward to move the CPU's paddle toward the ball
	# unsure of what a good speed would be but 5 seems to be not too hard
	# if we wanted an impossible challenge we set the delta of move_toward to a higher number
	if isBallInside == true:
		position.y = move_toward(self.position.y, ball.position.y, 5)
		position.y = clamp(position.y, 0, screenSize)


func _on_ai_vision_body_entered(body: Node2D) -> void:
	isBallInside = true


func _on_ai_vision_body_exited(body: Node2D) -> void:
	isBallInside = false
