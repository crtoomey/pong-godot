extends StaticBody2D

var direction = 0
var speed = 300
var screenSize = 540
var isBallInside = false
@onready var ball: CharacterBody2D = $"../Ball"


	

func _physics_process(delta: float) -> void:
	if isBallInside == true:
		position.y = move_toward(self.position.y, ball.position.y, 5)
		position.y = clamp(position.y, 0, screenSize)


func _on_ai_vision_body_entered(body: Node2D) -> void:
	isBallInside = true


func _on_ai_vision_body_exited(body: Node2D) -> void:
	isBallInside = false
