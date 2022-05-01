extends KinematicBody

onready var animation = $Character/RootNode/AnimationPlayer
onready var animation_tree = $Character/AnimationTree
onready var collision_animation = $AnimationPlayer

var lane = 0

func _physics_process(delta):
	if Input.is_action_just_pressed("jump"):
		animation_tree.set("parameters/play_jump/active", true)
		collision_animation.play("jump")
	if Input.is_action_just_pressed("left") and lane > -1:
		lane -= 1
	if Input.is_action_just_pressed("right") and lane < 1:
		lane += 1
	
	global_transform.origin.x = lerp(global_transform.origin.x, lane * 1.5, 10 * delta)

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "jump":
		collision_animation.play("default")
