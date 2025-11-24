extends Area2D
var cpuScore = 0
@onready var cpuScoreLabel: Label = $CPUScore
@onready var ball: CharacterBody2D = $"../Ball"

func _on_body_entered(body: Node2D) -> void:

	cpuScore += 1
	print(cpuScore)
	cpuScoreLabel.text = str(cpuScore)
	ball.position = Vector2(480, 270)
