extends Node


@export var mob_scene: PackedScene
var score: int 


@onready var mob_timer: Timer = %MobTimer
@onready var score_timer: Timer = %ScoreTimer
@onready var start_timer: Timer = %StartTimer
@onready var start_position: Marker2D = %StartPosition
@onready var player: Area2D = %Player
@onready var mob_spawn_location: PathFollow2D = %MobSpawnLocation



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	new_game() 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func new_game() -> void:
	score = 0
	player.start(start_position.position)
	start_timer.start()



func game_over() -> void:
	mob_timer.stop()
	score_timer.stop()



func _on_start_timer_timeout() -> void:
	mob_timer.start()
	score_timer.start()


func _on_score_timer_timeout() -> void:
	score += 1


func _on_mob_timer_timeout() -> void:
	var mob:= mob_scene.instantiate()
	
	mob_spawn_location.progress_ratio = randf()
	var direction := mob_spawn_location.rotation + 90
	direction += randf_range(-PI / 4, PI / 4)
	
	mob.position = mob_spawn_location.position
	mob.rotation = direction
	
	var velocity = Vector2(randf_range(150.0,250.0),0)
	mob.linear_velocity = velocity.rotated(direction)
	
	add_child(mob)


