extends Area2D

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			get_node("/root/World/WorldComplete/CompleteArea2/AnimatedSprite")._portal()


	pass 