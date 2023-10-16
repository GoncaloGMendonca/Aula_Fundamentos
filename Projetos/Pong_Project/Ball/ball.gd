extends CharacterBody2D

@export var speed := 400


func _ready() -> void:
	velocity.x = [-1,1].pick_random()
	velocity.y = [-0.8,0.8].pick_random()
	velocity = velocity * speed
	
	
func _physics_process(delta: float)-> void:
	var collision := move_and_collide(velocity*delta)
	
	if collision: 
		velocity = velocity.bounce(collision.get_normal())

