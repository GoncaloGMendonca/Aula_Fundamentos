extends CharacterBody2D

@export var speed := 400

var direction := 0.0 

# Called when the node enters the scene tree for the first time.


func _physics_process(delta: float) -> void:
	velocity.y = direction * speed
	move_and_slide()

func _unhandled_input(event: InputEvent) -> void:
	direction = Input.get_axis("ui_up","ui_down")
