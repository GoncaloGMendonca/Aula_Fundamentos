extends Node

var player_score:= 0
var opponent_score:=0 

@onready var opponent_label: Label = %OppentScore
@onready var player_label: Label = %PlayerScore


func _on_wall_left_body_entered(body: Node2D) -> void:
	body.position = get_viewport().size / 2
	opponent_score += 1 
	opponent_label.text = str(opponent_score)
	
	
func _on_wal_right_body_entered(body: Node2D)-> void:
	body.position = get_viewport().size / 2
	player_score +=1 
	player_label.text = str(player_score)
