extends Spatial

export var running_speed = 8 # in units per second

func _physics_process(delta):
	global_transform.origin.z += running_speed * delta
	if global_transform.origin.z > 8:
		queue_free()
