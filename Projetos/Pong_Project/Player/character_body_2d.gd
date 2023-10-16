extends CharacterBody2D

@export var speed := 400

var direction := 0.0 

@onready var start_position := position

# Called when the node enters the scene tree for the first time.


func _physics_process(delta: float) -> void:
	position.x = 0
	velocity.y = direction * speed
	move_and_slide()
	position.x = start_position.x

func _unhandled_input(event: InputEvent) -> void:
	direction = Input.get_axis("ui_up","ui_down")
