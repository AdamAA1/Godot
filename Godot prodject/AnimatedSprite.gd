extends AnimatedSprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _portal():
	get_node("/root/World/WorldComplete/CompleteArea2/AnimatedSprite").play("close")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
