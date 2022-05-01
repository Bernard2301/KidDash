extends Area


func _on_Obstacle_body_entered(body):
	#get_tree().reload_current_scene()
	get_tree().change_scene("res://UI/GameOver.tscn")
