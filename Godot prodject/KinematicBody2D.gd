extends KinematicBody2D

const UP = Vector2(0, -1)
var motion = Vector2()

const Gravity = 20
const JumpSpeed = -600
const Acceleration = 38
const MaxSpeed = 340


# warning-ignore:unused_argument
func _physics_process(delta):
	motion.y += Gravity
	var friction = false
	
	if Input.is_action_pressed("ui_right"):
		$Sprite.flip_h = false
		$Sprite.play("Run")
		motion.x = min(motion.x+Acceleration, MaxSpeed)
	elif Input.is_action_pressed("ui_left"):
		$Sprite.flip_h = true
		$Sprite.play("Run")
		motion.x = max(motion.x-Acceleration, -MaxSpeed) 
	else:
		$Sprite.play("Idle")
		friction = true
		
		
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			motion.y = JumpSpeed
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.2)	
	else:
		$Sprite.play("Fall")
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.05)	
		
		
		
	motion =  move_and_slide(motion, UP)
	
	
func _restart():
	position.x = 195
	position.y = 0
	pass