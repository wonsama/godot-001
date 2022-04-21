extends Sprite

var speed = 400
var angular_speed = PI * 2
var cnt = 0

# delta : 60fps = 1/60 = 0.0167

func _init():
	print("hello world", PI)
"""	
func _unhandled_input(event):
	if Input.is_action_pressed("ui_left"):
		print("left")
	if Input.is_action_pressed("ui_right"):
		print("right")
"""

func _process(delta):
	var direction = 0
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation) * speed
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2.DOWN.rotated(rotation) * speed
		
	position += velocity * delta
	rotation += angular_speed * delta * direction
