extends Area2D
var playerScore = 0
@onready var playerScoreLabel: Label = $PlayerScore
@onready var ball: CharacterBody2D = $"../Ball"

func _on_body_entered(_body: Node2D) -> void:
	# this is the same as CPU score just for the player
	# see cpu_paddle.gd's comments
	playerScore += 1
	#print(playerScore)
	playerScoreLabel.text = str(playerScore)
	ball.position = Vector2(480, 270)
	# reset score after a game over
	if playerScore >= 10:
		playerScore = 0
