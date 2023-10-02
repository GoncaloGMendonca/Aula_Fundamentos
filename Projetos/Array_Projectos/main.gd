extends Node


# Called when the program starts.
func _ready() -> void:
	var highscores: Array[int]
	highscores = [11,40,24,98,63]
	
	Console.write("Choose a highscore (1-5): ")
	var option:= int(await Console.read_line())
	
	
	if option >= 1 and option <= 5: 
		Console.write_line(str(highscores[option -1]))
	else:
		Console.write_line("Invalid Option")
