extends Sprite2D

@export var speed:= 200

var input_vector:= Vector2.ZERO


func _process(delta):
	rotation = rotation + 3 * delta
	position += input_vector * speed * delta
	
#	if Input.is_key_pressed(KEY_UP): 
#		position.y = position.y - speed * delta
#	elif  Input.is_key_pressed(KEY_DOWN): 
#		position.y = position.y + speed * delta
#	if Input.is_key_pressed(KEY_LEFT): 
#		position.x = position.x - speed * delta
#	elif Input.is_key_pressed(KEY_RIGHT): 
#		position.x = position.x + speed * delta 

func _unhandled_input(event: InputEvent) -> void:
	input_vector = Input.get_vector("Move Left", "Move Right", "Move Up", "Move Down")
