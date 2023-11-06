extends RigidBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = %AnimatedSprite2D





func _ready() -> void:
	var mob_types := animated_sprite_2d.sprite_frames.get_animation_names() as Array
	animated_sprite_2d.play(mob_types.pick_random())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
