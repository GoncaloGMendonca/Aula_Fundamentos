extends CharacterBody2D

enum Direction {LEFT,RIGHT,UP,DOWN}

@export var speed := 100 

var facing_direction := Direction.LEFT
var previous_direction := Vector2.LEFT

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	animated_sprite_2d.play("left")

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("down"):
		facing_direction = Direction.DOWN
		animated_sprite_2d.play("down")
	elif event.is_action_pressed("up"):
		facing_direction = Direction.UP
		animated_sprite_2d.play("up")
	elif event.is_action_pressed("left"):
		facing_direction = Direction.LEFT
		animated_sprite_2d.play("left")
	elif event.is_action_pressed("right"):
		facing_direction = Direction.RIGHT
		animated_sprite_2d.play("right")
		


func _physics_process(delta: float) -> void:
	var direction := Vector2.ZERO
	
	match facing_direction:
		Direction.DOWN:
			direction = Vector2.DOWN
		Direction.UP:
			direction = Vector2.UP
		Direction.LEFT:
			direction = Vector2.LEFT
		Direction.RIGHT:
			direction = Vector2.RIGHT
			
	velocity = direction * speed
	
	var collision := move_and_collide(velocity * delta)
	
	if collision:
		move_and_collide(previous_direction * speed * delta)
	else:
		previous_direction = direction
	
	
	
