extends Sprite

var speed = 400
var angular_speed = PI * 1
var cnt = 0

# delta : 60fps = 1/60 = 0.0167

func _init():
	print("hello world", PI)

func _process(delta):
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1
		
	rotation += angular_speed * delta * direction
	if rotation > PI/2:
		rotation = PI/2
	if rotation < -PI/2:
		rotation = -PI/2
	#cnt+=1
	
	
		
	#var velocity = Vector2.DOWN.rotated(rotation) * speed
	#position += velocity * delta
	#print(delta * 60)
