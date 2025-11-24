extends Area2D
var playerScore = 0
@onready var playerScoreLabel: Label = $PlayerScore
@onready var ball: CharacterBody2D = $"../Ball"

func _on_body_entered(body: Node2D) -> void:
	playerScore += 1
	print(playerScore)
	playerScoreLabel.text = str(playerScore)
	ball.position = Vector2(480, 270)
