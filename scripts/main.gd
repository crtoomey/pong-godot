extends Node2D
@onready var start_button: Button = $StartButton
@onready var cpuScore: Label = $LeftScore/CPUScore
@onready var playerScore: Label = $RightScore/PlayerScore



func _ready() -> void:
	# make no time pass which is just to start the game paused
	Engine.time_scale = 0
	
	
func _process(delta: float) -> void:
	#print(playerScore.text)
	#print(cpuScore.text)
	if cpuScore.text == "10":
		game_over()
	elif playerScore.text == "10":
		game_over()

# not sure why the pressed() signal didn't work 
# not sure why the get_tree().paused didn't work either. maybe the start button can't be pressed if
# the game is paused?
#func _on_start_button_pressed() -> void:
	#print("button pressed")
	#get_tree().paused = false
	#start_button.queue_free()

# start the time when the start button is pressed 
func _on_start_button_button_down() -> void:
	print("button pressed")
	Engine.time_scale = 1
	start_button.hide()
	
func game_over():
	print("Game Over")
	start_button.show()
	Engine.time_scale = 0
	playerScore.text = "0"
	cpuScore.text = "0"
	
