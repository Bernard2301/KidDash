extends Spatial

const CHUNKS = [
	preload("res://environment/Chunk01.tscn"),
	preload("res://environment/Chunk02.tscn"),
	preload("res://environment/Chunk03.tscn"),
	preload("res://environment/Chunk04.tscn"),
]

export var chunk_size = 4

func _ready():
	spawn_initial_chunks()

func spawn_initial_chunks():
	for n in 128:
		spawn_chunk(n * chunk_size)
		
func spawn_chunk(offset = 0):
	var random_chunk = CHUNKS[randi() % CHUNKS.size()]
#	if rand_range(0, 1) < 0.25:
#		random_chunk = CHUNKS[0]
	var instance = random_chunk.instance()
	add_child(instance)
	instance.global_transform.origin.z += offset

func _on_Timer_timeout():
	spawn_chunk()
