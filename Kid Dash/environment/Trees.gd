extends Spatial

const TREE = preload("res://environment/Tree.tscn")

func _ready():
	for n in 3:
		if randf() > 0.5:
			spawn_tree()

func spawn_tree():
	var instance = TREE.instance()
	add_child(instance)
	randomize()
	instance.global_transform.origin.z += rand_range(-2.5, 2.5)
	instance.global_transform.origin.x += rand_range(-2.5, 2.5)
	var rand_radius = rand_range(0.75, 1.25)
	instance.scale.x = rand_radius
	instance.scale.z = rand_radius
	instance.scale.y = rand_range(0.75, 1.25)
	instance.rotate_y(deg2rad(rand_range(0, 360)))
	instance.rotate_x(deg2rad(rand_range(0, 10)))
	instance.rotate_z(deg2rad(rand_range(0, 10)))
