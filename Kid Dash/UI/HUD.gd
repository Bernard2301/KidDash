extends Control

var score = 0

func _on_Timer_timeout():
	score += 1
	$Score.text = "Score: " + str(score)
