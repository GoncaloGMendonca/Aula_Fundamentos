extends Node


# Called when the program starts.
func _ready() -> void:
	var rand:= randi_range(0,15)
	var health:= 10
	
	
	
	Console.write("You took " + str(rand) + " damage and ")
	if rand >= health:
		Console.write_line("died.\a")
	else: 
		Console.write_line("survived")
