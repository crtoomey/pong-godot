extends Area2D
@export var cpuScore = 0
@onready var cpuScoreLabel: Label = $CPUScore
@onready var ball: CharacterBody2D = $"../Ball"

func _on_body_entered(_body: Node2D) -> void:
	# tracks the score for the computer
	cpuScore += 1
	#print(cpuScore)
	# just updates the label node with the cpuScore as a string
	cpuScoreLabel.text = str(cpuScore)
	#Resets ball position to center
	ball.position = Vector2(480, 270)
	# reset score after a game over
	if cpuScore >= 10:
		cpuScore = 0
	
